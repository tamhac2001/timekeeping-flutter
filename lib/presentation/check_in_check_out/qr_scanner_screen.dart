import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:timekeeping/application/checkin_checkout/qr_scan_screen_bloc.dart';
import 'package:timekeeping/presentation/check_in_check_out/widgets/widgets.dart';
import 'package:timekeeping/presentation/routes/app_router.gr.dart';

class QrScannerScreen extends StatelessWidget {
  QrScannerScreen({Key? key}) : super(key: key);
  final MobileScannerController cameraController = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Scanner'),
        actions: [
          IconButton(
            color: Colors.white,
            icon: ValueListenableBuilder(
              valueListenable: cameraController.torchState,
              builder: (context, state, child) {
                switch (state as TorchState) {
                  case TorchState.off:
                    return const Icon(Icons.flash_off, color: Colors.grey);
                  case TorchState.on:
                    return const Icon(Icons.flash_on, color: Colors.yellow);
                }
              },
            ),
            iconSize: 32.0,
            onPressed: () => cameraController.toggleTorch(),
          ),
          IconButton(
            color: Colors.white,
            icon: ValueListenableBuilder(
              valueListenable: cameraController.cameraFacingState,
              builder: (context, state, child) {
                switch (state as CameraFacing) {
                  case CameraFacing.front:
                    return const Icon(Icons.camera_front);
                  case CameraFacing.back:
                    return const Icon(Icons.camera_rear);
                }
              },
            ),
            iconSize: 32.0,
            onPressed: () => cameraController.switchCamera(),
          ),
        ],
      ),
      // bottomNavigationBar: const MyBottomAppBar(initialActiveIndex: 1),
      body: BlocConsumer<QrScanScreenBloc, QrScanScreenState>(
        listener: (context, state) {
          if (state.failureOrUnit != null) {
            state.failureOrUnit!.fold(
                (failure) => failure.when(serverError: () {
                      showMyDialog(context, 'Lỗi server');
                    }, unauthenticated: () {
                      showMyDialog(context, 'Phiên đăng nhập hết hạn').then(
                          (value) => AutoRouter.of(context)
                              .replace(const LoginScreen()));
                    }, qrCodeNotMatch: () {
                      showMyDialog(context, 'Qr Code không hợp lệ');
                    }), (_) {
              showMyDialog(context, 'Điểm danh thành công').then((value) {
                AutoRouter.of(context).pop();
                context
                    .read<QrScanScreenBloc>()
                    .add(const QrScanScreenEvent.screenReset());
              });
            });
          }
        },
        builder: (context, state) {
          return MobileScanner(
              allowDuplicates: false,
              controller: cameraController,
              onDetect: (qrcode, args) {
                if (qrcode.rawValue == null) {
                  debugPrint('Failed to scan Barcode');
                } else {
                  final String code = qrcode.rawValue!;
                  debugPrint('qrCode: $qrcode');
                  context
                      .read<QrScanScreenBloc>()
                      .add(QrScanScreenEvent.qrCodeScanned(code));
                }
              });
        },
      ),
    );
  }
}
