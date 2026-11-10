import 'package:flutter/material.dart';
import 'ui/produk_page.dart';
import 'ui/login_page.dart' as tokokita_login;
import 'ui/registrasi_page.dart';
import 'ui/produk_form.dart';
import 'ui/produk_detail.dart';
import 'model/produk.dart';
import 'hello_world.dart';
import 'column_widget.dart';
import 'row_widget.dart';
import 'login_page.dart' as modul3;
import 'home_page.dart' as modul3_home;
import 'about_page.dart' as modul3_about;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Kita',
      debugShowCheckedModeBanner: false,
      home: const ProdukPage(),
      routes: {
        '/produk_page': (context) => const ProdukPage(),
        '/login': (context) => const tokokita_login.LoginPage(),
        '/registrasi': (context) => const RegistrasiPage(),
        '/produk_form': (context) => const ProdukForm(),
        '/produk_detail': (context) => ProdukDetail(
              produk: Produk(
                id: 1,
                kodeProduk: 'A001',
                namaProduk: 'Kamera',
                hargaProduk: 5000000,
              ),
            ),
        // Rute untuk praktikum modul-modul sebelumnya
        '/login_modul3': (context) => const modul3.LoginPage(),
        '/home_modul3': (context) => const modul3_home.HomePage(),
        '/about_modul3': (context) => const modul3_about.AboutPage(),
        '/hello': (context) => const HelloWorld(),
        '/column': (context) => const ColumnWidget(),
        '/row': (context) => const RowWidget(),
      },
    );
  }
}
