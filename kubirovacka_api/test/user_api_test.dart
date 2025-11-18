import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for UserApi
void main() {
  final instance = KubirovackaApi().getUserApi();

  group(UserApi, () {
    // Přidání uživatele do skupiny
    //
    //Future<UserAddFormDTO> apiMainUserAddUserToGroupPost(String roleId, String email, String firstName, String lastName, String password, String locale, { String groupId, String firebaseToken }) async
    test('test apiMainUserAddUserToGroupPost', () async {
      // TODO
    });

    // Potvrzení emailu uživatele
    //
    //Future apiMainUserConfirmedPatch(String confirmHash, { String groupId }) async
    test('test apiMainUserConfirmedPatch', () async {
      // TODO
    });

    // Maže uživatelský účet
    //
    //Future apiMainUserDelete(String id, { String groupId }) async
    test('test apiMainUserDelete', () async {
      // TODO
    });

    // Vrací detailní uživatelský účet
    //
    //Future<User> apiMainUserDetailedUserGet(String email, { String groupId }) async
    test('test apiMainUserDetailedUserGet', () async {
      // TODO
    });

    // Aktualizace Firebase tokenu
    //
    //Future apiMainUserFbTokenPatch({ String fbToken, String groupId }) async
    test('test apiMainUserFbTokenPatch', () async {
      // TODO
    });

    // Změna hesla po zapomenutí
    //
    //Future apiMainUserForgottenPasswordPatch(String hash, String password, { String groupId }) async
    test('test apiMainUserForgottenPasswordPatch', () async {
      // TODO
    });

    // Zaslání emailu pro reset hesla
    //
    //Future apiMainUserPasswordResetEmailPost(String email, { String groupId }) async
    test('test apiMainUserPasswordResetEmailPost', () async {
      // TODO
    });

    // Registrace
    //
    //Future<UserRegisterDTO> apiMainUserPost(String email, String firstName, String lastName, String password, String locale, { String groupId, String firebaseToken }) async
    test('test apiMainUserPost', () async {
      // TODO
    });

    // Vrací profil uživatele
    //
    //Future<UserProfileDTO> apiMainUserProfileGet({ String id, String groupId }) async
    test('test apiMainUserProfileGet', () async {
      // TODO
    });

    // Editace profilu uživatele
    //
    //Future<UserProfileDTO> apiMainUserProfilePatch(String id, { String groupId, String email, String firstName, String lastName, String password, String roleId }) async
    test('test apiMainUserProfilePatch', () async {
      // TODO
    });

    // Potvrzuje a odpotvrzuje uživatelský účet
    //
    //Future apiMainUserSuperConfirmedPatch(String id, bool confirmed, { String groupId }) async
    test('test apiMainUserSuperConfirmedPatch', () async {
      // TODO
    });

    // Mění jazyk uživatele
    //
    //Future apiMainUserSuperLocalePatch(String id, String locale, { String groupId }) async
    test('test apiMainUserSuperLocalePatch', () async {
      // TODO
    });

    // Vrací pole emailů obsahujících hledanou frázi
    //
    //Future<BuiltList<String>> apiMainUserUsersWithEmailGet(String email, { String groupId }) async
    test('test apiMainUserUsersWithEmailGet', () async {
      // TODO
    });
  });
}
