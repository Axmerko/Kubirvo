import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for LicensePaymentApi
void main() {
  final instance = KubirovackaApi().getLicensePaymentApi();

  group(LicensePaymentApi, () {
    //Future apiPaymentLicensePaymentForceCheckPaymentsPost({ String groupId }) async
    test('test apiPaymentLicensePaymentForceCheckPaymentsPost', () async {
      // TODO
    });

    //Future apiPaymentLicensePaymentGenerateMissingInvoicesPost({ String groupId, int year }) async
    test('test apiPaymentLicensePaymentGenerateMissingInvoicesPost', () async {
      // TODO
    });

    // Provede simulaci vytvoreni faktury
    //
    //Future<String> apiPaymentLicensePaymentInvoiceTestGet({ String id, String groupId }) async
    test('test apiPaymentLicensePaymentInvoiceTestGet', () async {
      // TODO
    });

    // Vytvoří GoPay platbu
    //
    //Future<GoPayPaymentDTO> apiPaymentLicensePaymentPost({ String groupId, LicensePaymentDTO licensePaymentDTO }) async
    test('test apiPaymentLicensePaymentPost', () async {
      // TODO
    });

    // Vrátí stav platby
    //
    //Future<SessionState> apiPaymentLicensePaymentStateGet({ String id, String groupId }) async
    test('test apiPaymentLicensePaymentStateGet', () async {
      // TODO
    });

    // Zkontroluje stav platby, provede potřebné akce a vrátí ho
    //
    //Future<SessionState> apiPaymentLicensePaymentStateNotificationGet({ String id, String groupId }) async
    test('test apiPaymentLicensePaymentStateNotificationGet', () async {
      // TODO
    });
  });
}
