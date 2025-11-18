import 'package:get_it/get_it.dart';
import 'package:kubirovacka_one/services/auth_service.dart';

final getIt = GetIt.instance;

String getKubirovackaWebUrl({String? next}) {
  final authService = getIt.get<AuthService>();
  return "https://kubirovacka.cz/linkLogin?authToken=${authService.getAuthToken()!.token}${next != null ? '&next=$next' : ''}";
}