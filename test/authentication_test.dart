import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:timekeeping/domain/auth/auth_failure.dart';
import 'package:timekeeping/domain/auth/email_address.dart';
import 'package:timekeeping/domain/auth/password.dart';
import 'package:timekeeping/infrastructure/auth/authentication_repository.dart';
import 'package:timekeeping/infrastructure/auth/i_authentication_api_client.dart';
import 'package:timekeeping/infrastructure/auth/secure_storage_repository.dart';
import 'package:timekeeping/infrastructure/user/i_user_api_client.dart';

class MockAuthenticationApiClient extends Mock
    implements IAuthenticationApiClient {}

class MockSecureStorageRepository extends Mock
    implements SecureStorageRepository {}

void main() {
  late AuthenticationRepository sut;
  late MockAuthenticationApiClient mockAuthenticationApiClient;
  late MockSecureStorageRepository mockSecureStorageRepository;
  setUp(() {
    mockAuthenticationApiClient = MockAuthenticationApiClient();
    mockSecureStorageRepository = MockSecureStorageRepository();
    sut = AuthenticationRepository(
        authenticationApiClient: mockAuthenticationApiClient,
        secureStorageRepository: mockSecureStorageRepository);
  });

  group('login', () {
    void arrangeAuthenticationApiClientLoginSuccess() {
      when(() => mockAuthenticationApiClient.login(
              email: any(named: 'email'), password: any(named: 'password')))
          .thenAnswer((_) async =>
              <String, dynamic>{'access_token': 'abcxyz', 'email': 'email'});
      when(() => mockSecureStorageRepository.setAccessToken(any()))
          .thenAnswer((_) async => {});
      when(() => mockSecureStorageRepository.setExpireDate(any()))
          .thenAnswer((_) async {});
    }

    void arrangeAuthenticationApiClientLoginServerFailure() {
      when(() => mockAuthenticationApiClient.login(
              email: any(named: 'email'), password: any(named: 'password')))
          .thenThrow(AuthException.serverError());
      when(() => mockSecureStorageRepository.setAccessToken(any()))
          .thenAnswer((_) async => {});
      when(() => mockSecureStorageRepository.setExpireDate(any()))
          .thenAnswer((_) async {});
    }

    void arrangeAuthenticationApiClientLoginInvalidEmailAndPassword() {
      when(() => mockAuthenticationApiClient.login(
              email: any(named: 'email'), password: any(named: 'password')))
          .thenThrow(AuthException.invalidEmailAndPassword());
      when(() => mockSecureStorageRepository.setAccessToken(any()))
          .thenAnswer((_) async => {});
      when(() => mockSecureStorageRepository.setExpireDate(any()))
          .thenAnswer((_) async {});
    }

    test('login using authentication api client success', () async {
      arrangeAuthenticationApiClientLoginSuccess();
      final failureOrSuccess = await sut.login(
          email: EmailAddress('abc@gmail.com'), password: Password('123456'));
      expect(failureOrSuccess, right(unit));
    });

    test('login using authentication api client server failure', () async {
      arrangeAuthenticationApiClientLoginServerFailure();
      final failureOrSuccess = await sut.login(
          email: EmailAddress('abc@gmail.com'), password: Password('123456'));
      expect(failureOrSuccess, left(const AuthFailure.serverError()));
    });

    test('login using authentication api client invalid email and password',
        () async {
      arrangeAuthenticationApiClientLoginInvalidEmailAndPassword();
      final failureOrSuccess = await sut.login(
          email: EmailAddress('abc@gmail.com'), password: Password('123456'));
      expect(
          failureOrSuccess, left(const AuthFailure.invalidEmailAndPassword()));
    });
  });
}
