import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for TokenApi
void main() {
  final instance = KubirovackaApi().getTokenApi();

  group(TokenApi, () {
    // Vrací autentizační JWT token
    //
    //Future<GeneratedJwtDTO> apiMainTokenPost(String email, String password) async
    test('test apiMainTokenPost', () async {
      // TODO
    });
  });
}
