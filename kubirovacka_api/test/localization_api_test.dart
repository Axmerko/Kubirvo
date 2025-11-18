import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for LocalizationApi
void main() {
  final instance = KubirovackaApi().getLocalizationApi();

  group(LocalizationApi, () {
    //Future<BuiltMap<String, String>> apiMainLocalizationGet() async
    test('test apiMainLocalizationGet', () async {
      // TODO
    });
  });
}
