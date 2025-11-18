import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for CompanyApi
void main() {
  final instance = KubirovackaApi().getCompanyApi();

  group(CompanyApi, () {
    //Future<BuiltList<CompanyDTO>> apiReportCompanyCompaniesGet({ String filter, String groupId }) async
    test('test apiReportCompanyCompaniesGet', () async {
      // TODO
    });

    //Future apiReportCompanyDelete({ String subjectId, String groupId }) async
    test('test apiReportCompanyDelete', () async {
      // TODO
    });

    // Vytvoří firmu
    //
    //Future<CompanyDTO> apiReportCompanyPost({ String groupId, CompanyDTO companyDTO }) async
    test('test apiReportCompanyPost', () async {
      // TODO
    });

    // Aktualizuje firmu
    //
    //Future<CompanyDTO> apiReportCompanyPut({ String groupId, CompanyDTO companyDTO }) async
    test('test apiReportCompanyPut', () async {
      // TODO
    });
  });
}
