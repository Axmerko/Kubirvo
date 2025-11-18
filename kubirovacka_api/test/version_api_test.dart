import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for VersionApi
void main() {
  final instance = KubirovackaApi().getVersionApi();

  group(VersionApi, () {
    //Future<String> apiMainVersionGet() async
    test('test apiMainVersionGet', () async {
      // TODO
    });
  });
}
