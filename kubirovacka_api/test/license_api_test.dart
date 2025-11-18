import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for LicenseApi
void main() {
  final instance = KubirovackaApi().getLicenseApi();

  group(LicenseApi, () {
    // Smazání license
    //
    //Future apiMainLicenseDelete({ String groupId, String licenseId }) async
    test('test apiMainLicenseDelete', () async {
      // TODO
    });

    // Vrací licenci, kterou uživatel momentálně používá
    //
    //Future<LicenseDTO> apiMainLicenseGet({ String groupId }) async
    test('test apiMainLicenseGet', () async {
      // TODO
    });

    //Future<LicenseDTO> apiMainLicenseIdGet(String id, { String groupId }) async
    test('test apiMainLicenseIdGet', () async {
      // TODO
    });

    // Vrátí licence dané skupiny
    //
    //Future<LicenseDTOGridDTO> apiMainLicenseLicensesOfGroupGet({ String sort, String order, int limit, int page, String filterQueryPeriodSearch, BuiltList<GridFilterRule> filterQueryPeriodRules, String groupId }) async
    test('test apiMainLicenseLicensesOfGroupGet', () async {
      // TODO
    });

    //Future<LicenseDTO> apiMainLicensePatch({ String groupId, LicenseDTO licenseDTO }) async
    test('test apiMainLicensePatch', () async {
      // TODO
    });

    // Vytvoří novou licenci
    //
    //Future<LicenseDTO> apiMainLicensePost({ String groupId, LicenseDTO licenseDTO }) async
    test('test apiMainLicensePost', () async {
      // TODO
    });

    // Prodlužuje uživateli licenci
    //
    //Future apiMainLicenseSuperExpirationPatch(String id, DateTime expirationDate, { String groupId }) async
    test('test apiMainLicenseSuperExpirationPatch', () async {
      // TODO
    });

    //Future apiMainLicenseSuperGiveAllPremiumPatch({ String groupId }) async
    test('test apiMainLicenseSuperGiveAllPremiumPatch', () async {
      // TODO
    });

    // Odebrání license
    //
    //Future apiMainLicenseUnassignPatch({ String groupId, String userId }) async
    test('test apiMainLicenseUnassignPatch', () async {
      // TODO
    });
  });
}
