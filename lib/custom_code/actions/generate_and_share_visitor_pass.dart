// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:share_plus/share_plus.dart';

Future generateAndShareVisitorPass(
  String? visitorName,
  String? company,
  String? hostName,
  String? visitDate,
  String? startTime,
  String? endTime,
  String? qrToken,
  String? qrImageUrl,
) async {
  try {
    final pdf = pw.Document();

    // Download QR image
    Uint8List? qrBytes;

    if (qrImageUrl != null && qrImageUrl.trim().isNotEmpty) {
      try {
        final response = await http.get(
          Uri.parse(qrImageUrl),
        );

        if (response.statusCode == 200) {
          qrBytes = response.bodyBytes;
        }
      } catch (e) {
        debugPrint('QR image download failed: $e');
      }
    }

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(28),
        build: (context) {
          return pw.Container(
            decoration: pw.BoxDecoration(
              border: pw.Border.all(
                color: PdfColors.grey300,
                width: 1,
              ),
              borderRadius: pw.BorderRadius.circular(18),
            ),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                // ─────────────────────────────
                // HEADER
                // ─────────────────────────────
                pw.Container(
                  width: double.infinity,
                  padding: const pw.EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 20,
                  ),
                  decoration: pw.BoxDecoration(
                    color: PdfColors.orange,
                    borderRadius: const pw.BorderRadius.only(
                      topLeft: pw.Radius.circular(18),
                      topRight: pw.Radius.circular(18),
                    ),
                  ),
                  child: pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: pw.CrossAxisAlignment.center,
                    children: [
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            'ICONNECT',
                            style: pw.TextStyle(
                              color: PdfColors.white,
                              fontSize: 11,
                              fontWeight: pw.FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                          pw.SizedBox(height: 5),
                          pw.Text(
                            'VISITOR PASS',
                            style: pw.TextStyle(
                              color: PdfColors.white,
                              fontSize: 24,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      pw.Container(
                        padding: const pw.EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 7,
                        ),
                        decoration: pw.BoxDecoration(
                          color: PdfColors.white,
                          borderRadius: pw.BorderRadius.circular(20),
                        ),
                        child: pw.Text(
                          'VISITOR',
                          style: pw.TextStyle(
                            color: PdfColors.orange,
                            fontSize: 9,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // ─────────────────────────────
                // BODY
                // ─────────────────────────────
                pw.Padding(
                  padding: const pw.EdgeInsets.fromLTRB(
                    24,
                    24,
                    24,
                    20,
                  ),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      // Visitor label
                      pw.Text(
                        'VISITOR',
                        style: pw.TextStyle(
                          fontSize: 9,
                          color: PdfColors.grey600,
                          fontWeight: pw.FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),

                      pw.SizedBox(height: 5),

                      // Visitor name
                      pw.Text(
                        visitorName ?? 'Visitor',
                        style: pw.TextStyle(
                          fontSize: 21,
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColors.grey900,
                        ),
                      ),

                      pw.SizedBox(height: 4),

                      // Company
                      pw.Text(
                        company ?? '-',
                        style: pw.TextStyle(
                          fontSize: 11,
                          color: PdfColors.grey600,
                        ),
                      ),

                      pw.SizedBox(height: 20),

                      // Divider
                      pw.Divider(
                        color: PdfColors.grey300,
                        height: 1,
                      ),

                      pw.SizedBox(height: 18),

                      // DETAILS TITLE
                      pw.Text(
                        'VISIT DETAILS',
                        style: pw.TextStyle(
                          fontSize: 9,
                          color: PdfColors.grey600,
                          fontWeight: pw.FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),

                      pw.SizedBox(height: 12),

                      // Row 1
                      pw.Row(
                        children: [
                          pw.Expanded(
                            child: _detailCard(
                              'HOST',
                              hostName ?? '-',
                            ),
                          ),
                          pw.SizedBox(width: 12),
                          pw.Expanded(
                            child: _detailCard(
                              'VISIT DATE',
                              _formatDate(visitDate),
                            ),
                          ),
                        ],
                      ),

                      pw.SizedBox(height: 12),

                      // Row 2
                      pw.Row(
                        children: [
                          pw.Expanded(
                            child: _detailCard(
                              'ARRIVAL',
                              startTime ?? '-',
                            ),
                          ),
                          pw.SizedBox(width: 12),
                          pw.Expanded(
                            child: _detailCard(
                              'END TIME',
                              endTime ?? '-',
                            ),
                          ),
                        ],
                      ),

                      pw.SizedBox(height: 24),

                      // ─────────────────────────
                      // QR SECTION
                      // ─────────────────────────
                      pw.Container(
                        width: double.infinity,
                        padding: const pw.EdgeInsets.all(18),
                        decoration: pw.BoxDecoration(
                          color: PdfColors.grey50,
                          border: pw.Border.all(
                            color: PdfColors.grey200,
                          ),
                          borderRadius: pw.BorderRadius.circular(14),
                        ),
                        child: pw.Column(
                          children: [
                            pw.Text(
                              'SCAN TO CHECK-IN',
                              style: pw.TextStyle(
                                fontSize: 10,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.grey800,
                                letterSpacing: 1,
                              ),
                            ),
                            pw.SizedBox(height: 12),
                            if (qrBytes != null)
                              pw.Container(
                                width: 190,
                                height: 190,
                                padding: const pw.EdgeInsets.all(
                                  10,
                                ),
                                decoration: pw.BoxDecoration(
                                  color: PdfColors.white,
                                  border: pw.Border.all(
                                    color: PdfColors.grey300,
                                  ),
                                  borderRadius: pw.BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                child: pw.Image(
                                  pw.MemoryImage(qrBytes),
                                  fit: pw.BoxFit.contain,
                                ),
                              )
                            else
                              pw.Container(
                                width: 190,
                                height: 190,
                                alignment: pw.Alignment.center,
                                padding: const pw.EdgeInsets.all(
                                  15,
                                ),
                                decoration: pw.BoxDecoration(
                                  color: PdfColors.white,
                                  border: pw.Border.all(
                                    color: PdfColors.grey300,
                                  ),
                                  borderRadius: pw.BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                child: pw.Text(
                                  qrToken ?? 'QR Code',
                                  textAlign: pw.TextAlign.center,
                                  style: pw.TextStyle(
                                    fontSize: 8,
                                    color: PdfColors.grey700,
                                  ),
                                ),
                              ),
                            pw.SizedBox(height: 10),
                            pw.Text(
                              'Use this QR code at reception for check-in / check-out',
                              textAlign: pw.TextAlign.center,
                              style: pw.TextStyle(
                                fontSize: 8,
                                color: PdfColors.grey600,
                              ),
                            ),
                          ],
                        ),
                      ),

                      pw.SizedBox(height: 18),

                      // ─────────────────────────
                      // STATUS
                      // ─────────────────────────
                      pw.Center(
                        child: pw.Container(
                          padding: const pw.EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: pw.BoxDecoration(
                            color: PdfColors.orange50,
                            borderRadius: pw.BorderRadius.circular(20),
                            border: pw.Border.all(
                              color: PdfColors.orange200,
                            ),
                          ),
                          child: pw.Text(
                            'PENDING CONFIRMATION',
                            style: pw.TextStyle(
                              fontSize: 9,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.orange800,
                              letterSpacing: .5,
                            ),
                          ),
                        ),
                      ),

                      pw.SizedBox(height: 20),

                      // ─────────────────────────
                      // SECURITY NOTE
                      // ─────────────────────────
                      pw.Container(
                        width: double.infinity,
                        padding: const pw.EdgeInsets.all(12),
                        decoration: pw.BoxDecoration(
                          color: PdfColors.grey100,
                          borderRadius: pw.BorderRadius.circular(8),
                        ),
                        child: pw.Row(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Container(
                              width: 18,
                              height: 18,
                              alignment: pw.Alignment.center,
                              decoration: pw.BoxDecoration(
                                color: PdfColors.grey700,
                                shape: pw.BoxShape.circle,
                              ),
                              child: pw.Text(
                                'i',
                                style: pw.TextStyle(
                                  color: PdfColors.white,
                                  fontSize: 10,
                                  fontWeight: pw.FontWeight.bold,
                                ),
                              ),
                            ),
                            pw.SizedBox(width: 9),
                            pw.Expanded(
                              child: pw.Text(
                                'Please present this visitor pass at reception for verification. This pass is intended for the registered visitor only.',
                                style: pw.TextStyle(
                                  fontSize: 8,
                                  color: PdfColors.grey700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // ─────────────────────────────
                // FOOTER
                // ─────────────────────────────
                pw.Container(
                  width: double.infinity,
                  padding: const pw.EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  decoration: pw.BoxDecoration(
                    color: PdfColors.grey50,
                    borderRadius: const pw.BorderRadius.only(
                      bottomLeft: pw.Radius.circular(18),
                      bottomRight: pw.Radius.circular(18),
                    ),
                  ),
                  child: pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text(
                        'IConnect Visitor Management',
                        style: pw.TextStyle(
                          fontSize: 8,
                          color: PdfColors.grey600,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Text(
                        'Generated electronically',
                        style: pw.TextStyle(
                          fontSize: 8,
                          color: PdfColors.grey500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );

    // ─────────────────────────────────────
    // SAVE PDF
    // ─────────────────────────────────────

    final directory = await getTemporaryDirectory();

    final safeName = (visitorName ?? 'Visitor').replaceAll(
      RegExp(r'[^a-zA-Z0-9_-]'),
      '_',
    );

    final file = File(
      '${directory.path}/VisitorPass_$safeName.pdf',
    );

    final pdfBytes = await pdf.save();

    await file.writeAsBytes(
      pdfBytes,
      flush: true,
    );

    // ─────────────────────────────────────
    // SHARE
    // ─────────────────────────────────────

    await Share.shareXFiles(
      [
        XFile(file.path),
      ],
      subject: 'Visitor Pass',
      text: 'Visitor Pass\n\n'
          'Visitor: ${visitorName ?? '-'}\n'
          'Company: ${company ?? '-'}\n'
          'Date: ${visitDate ?? '-'}\n'
          'Arrival: ${startTime ?? '-'}\n\n'
          'Please present this pass at reception.',
    );
  } catch (e) {
    debugPrint(
      'Visitor Pass sharing error: $e',
    );
    rethrow;
  }
}

// ─────────────────────────────────────────
// DETAIL CARD
// ─────────────────────────────────────────

pw.Widget _detailCard(
  String label,
  String value,
) {
  return pw.Container(
    padding: const pw.EdgeInsets.all(12),
    decoration: pw.BoxDecoration(
      color: PdfColors.white,
      border: pw.Border.all(
        color: PdfColors.grey200,
      ),
      borderRadius: pw.BorderRadius.circular(10),
    ),
    child: pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          label,
          style: pw.TextStyle(
            fontSize: 7,
            color: PdfColors.grey500,
            fontWeight: pw.FontWeight.bold,
            letterSpacing: .6,
          ),
        ),
        pw.SizedBox(height: 5),
        pw.Text(
          value,
          maxLines: 2,
          overflow: pw.TextOverflow.clip,
          style: pw.TextStyle(
            fontSize: 10,
            color: PdfColors.grey900,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

// ─────────────────────────────────────────
// DATE FORMAT
// ─────────────────────────────────────────

String _formatDate(String? date) {
  if (date == null || date.trim().isEmpty) {
    return '-';
  }

  try {
    final parsed = DateTime.parse(date);

    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];

    return '${parsed.day.toString().padLeft(2, '0')} '
        '${months[parsed.month - 1]} '
        '${parsed.year}';
  } catch (_) {
    return date;
  }
}
