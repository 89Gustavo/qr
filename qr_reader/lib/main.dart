import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/home_page.dart';
import 'package:qr_reader/pages/mapa_page.dart';
import 'package:qr_reader/provider/scan_list_provider.dart';
import 'package:qr_reader/provider/ui_provider.dart';
//import 'package:sqflite_common_ffi/sqflite_ffi.dart';

//void main() => runApp(const MyApp());

Future main() async {
// Initialize FFI
  //sqfliteFfiInit();

  // databaseFactory = databaseFactoryFfi;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (__) => UiProvidr(),
        ),
        ChangeNotifierProvider(
          create: (__) => ScanListProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home': (__) => const HomePage(),
          'mapa': (__) => const MapaPage(),
        },
      ),
    );
  }
}
