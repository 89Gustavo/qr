import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/provider/scan_list_provider.dart';

//import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      onPressed: () async {
        // String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        //     '#3650E2', 'CANCELAR', false, ScanMode.QR);
        String barcodeScanRes = 'http://otraCosa.com.gt';
        String barcodeScanGeo = 'geo:10.50.25';
        final scanListProvider =
            Provider.of<ScanListProvider>(context, listen: false);

        scanListProvider.nuevoScan(barcodeScanRes);
        scanListProvider.nuevoScan(barcodeScanGeo);
      },
      child: const Icon(Icons.filter_center_focus),
    );
  }
}
