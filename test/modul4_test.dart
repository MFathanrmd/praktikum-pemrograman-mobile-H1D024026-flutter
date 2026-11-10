import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:router_flutter/model/login.dart';
import 'package:router_flutter/model/registrasi.dart';
import 'package:router_flutter/model/produk.dart';
import 'package:router_flutter/ui/login_page.dart';
import 'package:router_flutter/ui/registrasi_page.dart';
import 'package:router_flutter/ui/produk_page.dart';
import 'package:router_flutter/ui/produk_form.dart';
import 'package:router_flutter/ui/produk_detail.dart';

void main() {
  group('Model Tests', () {
    test('Test Produk Model fromJson', () {
      final json = {
        'id': 1,
        'kode_produk': 'A001',
        'nama_produk': 'Kamera',
        'harga': 5000000,
      };
      final produk = Produk.fromJson(json);
      expect(produk.id, 1);
      expect(produk.kodeProduk, 'A001');
      expect(produk.namaProduk, 'Kamera');
      expect(produk.hargaProduk, 5000000);
    });

    test('Test Login Model fromJson', () {
      final json = {
        'code': 200,
        'status': true,
        'data': {
          'token': 'sample_token_xyz',
          'user': {
            'id': 10,
            'email': 'fathan@example.com',
          }
        }
      };
      final login = Login.fromJson(json);
      expect(login.code, 200);
      expect(login.status, true);
      expect(login.token, 'sample_token_xyz');
      expect(login.userID, 10);
      expect(login.userEmail, 'fathan@example.com');
    });

    test('Test Registrasi Model fromJson', () {
      final json = {
        'code': 200,
        'status': true,
        'data': 'Registrasi berhasil',
      };
      final reg = Registrasi.fromJson(json);
      expect(reg.code, 200);
      expect(reg.status, true);
      expect(reg.data, 'Registrasi berhasil');
    });
  });

  group('Widget Tests Modul 4', () {
    testWidgets('Test RegistrasiPage tampil dengan benar', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: RegistrasiPage()));
      expect(find.text('Registrasi'), findsWidgets);
      expect(find.widgetWithText(TextFormField, 'Nama'), findsOneWidget);
      expect(find.widgetWithText(TextFormField, 'Email'), findsOneWidget);
      expect(find.widgetWithText(TextFormField, 'Password'), findsOneWidget);
      expect(find.widgetWithText(TextFormField, 'Konfirmasi Password'), findsOneWidget);
    });

    testWidgets('Test UI LoginPage tampil dengan benar', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: LoginPage()));
      expect(find.text('Login TokoKita'), findsOneWidget);
      expect(find.widgetWithText(TextFormField, 'Email'), findsOneWidget);
      expect(find.widgetWithText(TextFormField, 'Password'), findsOneWidget);
    });

    testWidgets('Test ProdukPage menampilkan list produk TokoKita', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: ProdukPage()));
      expect(find.text('List Produk'), findsOneWidget);
      expect(find.text('Kamera'), findsOneWidget);
      expect(find.text('Kulkas'), findsOneWidget);
      expect(find.text('Mesin Cuci'), findsOneWidget);
    });

    testWidgets('Test ProdukDetail menampilkan info produk dan tombol edit/delete', (WidgetTester tester) async {
      final produk = Produk(id: 1, kodeProduk: 'A001', namaProduk: 'Kamera', hargaProduk: 5000000);
      await tester.pumpWidget(MaterialApp(home: ProdukDetail(produk: produk)));
      expect(find.text('Detail Produk'), findsOneWidget);
      expect(find.text('Kode : A001'), findsOneWidget);
      expect(find.text('Nama : Kamera'), findsOneWidget);
      expect(find.text('EDIT'), findsOneWidget);
      expect(find.text('DELETE'), findsOneWidget);
    });

    testWidgets('Test ProdukForm untuk Tambah Produk', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: ProdukForm()));
      expect(find.text('TAMBAH PRODUK'), findsOneWidget);
      expect(find.text('SIMPAN'), findsOneWidget);
    });

    testWidgets('Test ProdukForm untuk Ubah Produk', (WidgetTester tester) async {
      final produk = Produk(id: 1, kodeProduk: 'A001', namaProduk: 'Kamera', hargaProduk: 5000000);
      await tester.pumpWidget(MaterialApp(home: ProdukForm(produk: produk)));
      expect(find.text('UBAH PRODUK'), findsOneWidget);
      expect(find.text('UBAH'), findsOneWidget);
    });
  });
}
