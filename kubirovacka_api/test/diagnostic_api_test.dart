import 'package:test/test.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

/// tests for DiagnosticApi
void main() {
  final instance = KubirovackaApi().getDiagnosticApi();

  group(DiagnosticApi, () {
    //Future<BuiltList<DiagnosticLogDTO>> apiMainDiagnosticGet({ String userId, String groupId }) async
    test('test apiMainDiagnosticGet', () async {
      // TODO
    });

    //Future apiMainDiagnosticPost({ String groupId, BuiltList<DiagnosticLogDTO> diagnosticLogDTO }) async
    test('test apiMainDiagnosticPost', () async {
      // TODO
    });
  });
}
