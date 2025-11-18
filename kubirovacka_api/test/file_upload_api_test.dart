import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for FileUploadApi
void main() {
  final instance = KubirovackaApi().getFileUploadApi();

  group(FileUploadApi, () {
    //Future apiMainFileUploadPost({ String groupId, MultipartFile file }) async
    test('test apiMainFileUploadPost', () async {
      // TODO
    });
  });
}
