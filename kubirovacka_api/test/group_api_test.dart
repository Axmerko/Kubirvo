import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for GroupApi
void main() {
  final instance = KubirovackaApi().getGroupApi();

  group(GroupApi, () {
    // Vrátí kredity na reklamy
    //
    //Future<int> apiMainGroupAdCreditGet({ String groupId }) async
    test('test apiMainGroupAdCreditGet', () async {
      // TODO
    });

    // Zapne inzerci pro skupinu
    //
    //Future apiMainGroupAdvertiserPatch({ String groupId }) async
    test('test apiMainGroupAdvertiserPatch', () async {
      // TODO
    });

    // Vrací skupiny uživatele
    //
    //Future<BuiltList<GroupDTO>> apiMainGroupGet({ String groupId }) async
    test('test apiMainGroupGet', () async {
      // TODO
    });

    // Vrátí uživatele dané skupiny
    //
    //Future<BuiltList<UserProfileDTO>> apiMainGroupMembersGet({ String groupId }) async
    test('test apiMainGroupMembersGet', () async {
      // TODO
    });

    // Vrátí uživatele dané skupiny
    //
    //Future<UserProfileDTOGridDTO> apiMainGroupMembersGridGet({ String sort, String order, int limit, int page, String filterQueryPeriodSearch, BuiltList<GridFilterRule> filterQueryPeriodRules, String groupId }) async
    test('test apiMainGroupMembersGridGet', () async {
      // TODO
    });

    // Nastaví status uživatele ve skupině
    //
    //Future apiMainGroupUserStatusPatch({ String id, UserGroupStatus status, String groupId }) async
    test('test apiMainGroupUserStatusPatch', () async {
      // TODO
    });
  });
}
