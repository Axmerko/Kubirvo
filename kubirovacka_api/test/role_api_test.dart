import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for RoleApi
void main() {
  final instance = KubirovackaApi().getRoleApi();

  group(RoleApi, () {
    // Vrací role s jejich permisema
    //
    //Future<BuiltList<RoleDTO>> apiMainRoleListGet({ String groupId }) async
    test('test apiMainRoleListGet', () async {
      // TODO
    });

    // Vrací role s jejich permisema
    //
    //Future apiMainRolePermissionPatch({ String roleId, int permissionIndex, bool allowed, String groupId }) async
    test('test apiMainRolePermissionPatch', () async {
      // TODO
    });
  });
}
