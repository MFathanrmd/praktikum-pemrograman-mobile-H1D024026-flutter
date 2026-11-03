import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:router_flutter/login_page.dart';
import 'package:router_flutter/about_page.dart';

void main() {
  testWidgets('Test LoginPage tampil dengan benar', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));
    expect(find.text('Login'), findsWidgets);
    expect(find.text('Silakan Login'), findsOneWidget);
    expect(find.text('Username'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
  });

  testWidgets('Test input username dan password bisa diisi', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginPage()));
    final usernameField = find.widgetWithText(TextField, 'Username');
    final passwordField = find.widgetWithText(TextField, 'Password');
    expect(usernameField, findsOneWidget);
    expect(passwordField, findsOneWidget);
    await tester.enterText(usernameField, 'admin');
    await tester.enterText(passwordField, 'admin');
    await tester.pump();
    expect(find.text('admin'), findsWidgets);
  });

  testWidgets('Test AboutPage menampilkan informasi mahasiswa', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: AboutPage()));
    expect(find.text('About'), findsOneWidget);
    expect(find.text('M Fathan Ramdani'), findsOneWidget);
    expect(find.text('NIM: H1D024026'), findsOneWidget);
    expect(find.text('Shift: Awal G / Akhir C'), findsOneWidget);
  });
}
