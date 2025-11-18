import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for MediaApi
void main() {
  final instance = KubirovackaApi().getMediaApi();

  group(MediaApi, () {
    // Vrátí Base64 obrázek
    //
    //Future<String> apiAdvertisingMediaBase64Get({ String id, String groupId }) async
    test('test apiAdvertisingMediaBase64Get', () async {
      // TODO
    });

    // Nahraje obrázek
    //
    //Future<String> apiAdvertisingMediaPost({ String groupId, String imageBase64 }) async
    test('test apiAdvertisingMediaPost', () async {
      // TODO
    });
  });
}
