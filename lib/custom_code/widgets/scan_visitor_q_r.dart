// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:mobile_scanner/mobile_scanner.dart';

class ScanVisitorQR extends StatefulWidget {
  const ScanVisitorQR({
    super.key,
    this.width,
    this.height,
    this.onScan,
    this.torchOn,
  });

  final double? width;
  final double? height;

  /// QR text + captured image/file FlutterFlow ko return karega.
  final Future Function(String scanResult, FFUploadedFile qrImageFile)? onScan;

  /// FlutterFlow Page State se flashlight ki value aayegi.
  final bool? torchOn;

  @override
  State<ScanVisitorQR> createState() => _ScanVisitorQRState();
}

class _ScanVisitorQRState extends State<ScanVisitorQR> {
  late final MobileScannerController _controller;

  bool _isScanning = true;

  /// Actual torch state.
  bool _torchState = false;

  @override
  void initState() {
    super.initState();

    _torchState = widget.torchOn ?? false;

    _controller = MobileScannerController(
      torchEnabled: _torchState,

      // IMPORTANT:
      // Camera frame/image capture enable karna hai.
      returnImage: true,
    );
  }

  @override
  void didUpdateWidget(covariant ScanVisitorQR oldWidget) {
    super.didUpdateWidget(oldWidget);

    final bool oldTorch = oldWidget.torchOn ?? false;
    final bool newTorch = widget.torchOn ?? false;

    if (oldTorch != newTorch) {
      _updateTorch(newTorch);
    }
  }

  Future<void> _updateTorch(bool enabled) async {
    if (_torchState == enabled) {
      return;
    }

    try {
      await _controller.toggleTorch();
      _torchState = enabled;
    } catch (_) {
      // Torch unavailable - ignore.
    }
  }

  Future<void> _handleScan(BarcodeCapture capture) async {
    if (!_isScanning) {
      return;
    }

    if (capture.barcodes.isEmpty) {
      return;
    }

    final Barcode barcode = capture.barcodes.first;

    final String? rawValue = barcode.rawValue;

    if (rawValue == null) {
      return;
    }

    final String result = rawValue.trim();

    if (result.isEmpty) {
      return;
    }

    if (result.length > 2000) {
      await _showValidationError(
        'Invalid QR Code',
        'The QR code contains invalid data.',
      );
      return;
    }

    // IMPORTANT:
    // Mobile Scanner se captured image bytes lo.
    final imageBytes = capture.image;

    if (imageBytes == null || imageBytes.isEmpty) {
      await _showValidationError(
        'Scan Failed',
        'Unable to capture QR image. Please try again.',
      );
      return;
    }

    // Duplicate scan prevent.
    _isScanning = false;

    try {
      // Camera stop.
      await _controller.stop();

      // IMPORTANT:
      // Image bytes ko FlutterFlow Uploaded File mein convert karo.
      final FFUploadedFile qrImageFile = FFUploadedFile(
        name: 'visitor_qr_${DateTime.now().millisecondsSinceEpoch}.jpg',
        bytes: imageBytes,
      );

      final callback = widget.onScan;

      if (callback != null) {
        // QR text + actual UploadedFile dono return honge.
        await callback(
          result,
          qrImageFile,
        );
      }
    } catch (_) {
      if (mounted) {
        await _showValidationError(
          'Scan Failed',
          'Unable to process the QR code. Please try again.',
        );
      }
    } finally {
      await Future.delayed(
        const Duration(milliseconds: 800),
      );

      if (mounted) {
        _isScanning = true;

        try {
          await _controller.start();
        } catch (_) {
          // Camera restart error ignore.
        }
      }
    }
  }

  Future<void> _showValidationError(
    String title,
    String message,
  ) async {
    if (!mounted) {
      return;
    }

    await showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: MobileScanner(
        controller: _controller,
        onDetect: _handleScan,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
