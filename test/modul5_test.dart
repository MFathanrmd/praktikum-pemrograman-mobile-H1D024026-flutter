import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:router_flutter/helpers/api_url.dart';
import 'package:router_flutter/helpers/app_exception.dart';
import 'package:router_flutter/widget/success_dialog.dart';
import 'package:router_flutter/widget/warning_dialog.dart';

void main() {
  group('Helper & Exception Tests Modul 5', () {
    test('Test ApiUrl Endpoints', () {
      expect(ApiUrl.baseUrl, 'http://10.0.2.2/toko-api/public');
      expect(ApiUrl.registrasi, 'http://10.0.2.2/toko-api/public/registrasi');
      expect(ApiUrl.login, 'http://10.0.2.2/toko-api/public/login');
      expect(ApiUrl.listProduk, 'http://10.0.2.2/toko-api/public/produk');
      expect(ApiUrl.createProduk, 'http://10.0.2.2/toko-api/public/produk');
      expect(ApiUrl.updateProduk(5), 'http://10.0.2.2/toko-api/public/produk/5/update');
      expect(ApiUrl.showProduk(5), 'http://10.0.2.2/toko-api/public/produk/5');
      expect(ApiUrl.deleteProduk(5), 'http://10.0.2.2/toko-api/public/produk/5');
    });

    test('Test Custom AppExceptions', () {
      final fetchErr = FetchDataException('Server timeout');
      expect(fetchErr.toString(), 'Error During Communication: Server timeout');

      final badReq = BadRequestException('Invalid payload');
      expect(badReq.toString(), 'Invalid Request: Invalid payload');

      final unauth = UnauthorisedException('Access denied');
      expect(unauth.toString(), 'Unauthorised: Access denied');
    });
  });

  group('Widget Tests Modul 5 Dialogs', () {
    testWidgets('Test SuccessDialog widget', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: SuccessDialog(
            description: 'Registrasi berhasil, silahkan login',
            okClick: () {},
          ),
        ),
      ));
      expect(find.text('SUKSES'), findsOneWidget);
      expect(find.text('Registrasi berhasil, silahkan login'), findsOneWidget);
      expect(find.text('OK'), findsOneWidget);
    });

    testWidgets('Test WarningDialog widget', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: WarningDialog(
            description: 'Login gagal, silahkan coba lagi',
            okClick: () {},
          ),
        ),
      ));
      expect(find.text('GAGAL'), findsOneWidget);
      expect(find.text('Login gagal, silahkan coba lagi'), findsOneWidget);
      expect(find.text('OK'), findsOneWidget);
    });
  });
}
