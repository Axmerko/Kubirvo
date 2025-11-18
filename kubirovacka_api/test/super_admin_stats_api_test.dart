import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for SuperAdminStatsApi
void main() {
  final instance = KubirovackaApi().getSuperAdminStatsApi();

  group(SuperAdminStatsApi, () {
    //Future<SuperAdminStatsDTO> apiMiscSuperAdminStatsGet({ String groupId }) async
    test('test apiMiscSuperAdminStatsGet', () async {
      // TODO
    });
  });
}
