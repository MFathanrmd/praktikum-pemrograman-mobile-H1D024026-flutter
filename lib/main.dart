import 'package:flutter/material.dart';
import 'package:router_flutter/helpers/user_info.dart';
import 'package:router_flutter/ui/login_page.dart';
import 'package:router_flutter/ui/produk_page.dart';
import 'package:router_flutter/ui/registrasi_page.dart';
import 'package:router_flutter/ui/produk_form.dart';
import 'package:router_flutter/ui/produk_detail.dart';
import 'package:router_flutter/model/produk.dart';
import 'package:router_flutter/hello_world.dart';
import 'package:router_flutter/column_widget.dart';
import 'package:router_flutter/row_widget.dart';
import 'package:router_flutter/login_page.dart' as modul3;
import 'package:router_flutter/home_page.dart' as modul3_home;
import 'package:router_flutter/about_page.dart' as modul3_about;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget page = const Scaffold(
    body: Center(child: CircularProgressIndicator()),
  );

  @override
  void initState() {
    super.initState();
    isLogin();
  }

  void isLogin() async {
    var token = await UserInfo().getToken();
    if (token != null && token.isNotEmpty) {
      setState(() {
        page = const ProdukPage();
      });
    } else {
      setState(() {
        page = const LoginPage();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Kita',
      debugShowCheckedModeBanner: false,
      home: page,
      routes: {
        '/produk_page': (context) => const ProdukPage(),
        '/login': (context) => const LoginPage(),
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
