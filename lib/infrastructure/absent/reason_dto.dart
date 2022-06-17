import 'package:equatable/equatable.dart';
import 'package:timekeeping/domain/absent/reason.dart';

class ReasonDto extends Equatable {
  final String value;

  const ReasonDto._({required this.value});

  factory ReasonDto.fromJson(Map<String, dynamic> json) =>
      ReasonDto._(value: json['reason'] as String);

  factory ReasonDto.fromDomain(Reason reason) =>
      ReasonDto._(value: reason.value);

  @override
  List<Object?> get props => [value];
}
