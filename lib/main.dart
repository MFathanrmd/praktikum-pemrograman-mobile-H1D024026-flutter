import 'package:flutter/material.dart';
import 'hello_world.dart';
import 'column_widget.dart';
import 'row_widget.dart';
import 'ui/produk_form.dart';
import 'ui/produk_detail.dart';
import 'ui/produk_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum Pemrograman Mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: false,
      ),
      home: const ProdukPage(),
      routes: {
        '/hello': (context) => const HelloWorld(),
        '/column': (context) => const ColumnWidget(),
        '/row': (context) => const RowWidget(),
        '/produk_page': (context) => const ProdukPage(),
        '/produk_form': (context) => const ProdukForm(),
        '/produk_detail': (context) => const ProdukDetail(
              kodeProduk: 'A001',
              namaProduk: 'Kulkas',
              hargaProduk: 3000000,
            ),
      },
    );
  }
}
