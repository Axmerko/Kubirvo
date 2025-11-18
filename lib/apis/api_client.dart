import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:kubirovacka_api/kubirovacka_api.dart';

import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../interceptors/named_interceptor_wrapper.dart';
import '../models/jwt_token.dart';

final getIt = GetIt.instance;

class ApiClient {
  AuthBloc? _authBloc;
  bool groupInitialized = false;

  static const apiHost = String.fromEnvironment(
    'API_HOST',
    defaultValue: 'https://stage.kubirovacka.cz',
  );

  final api = KubirovackaApi(basePathOverride: apiHost, interceptors: []);

  void setupAuth(String token, AuthBloc authBloc) {
    _authBloc = authBloc;

    api.dio.interceptors.add(NamedInterceptorWrapper(
      name: 'auth',
      onRequest: (options, handler) {
        options.headers['Authorization'] = "Bearer $token";
        return handler.next(options);
      },
    ));

    api.dio.interceptors.add(NamedInterceptorWrapper(
        name: 'new-token',
        onError: (e, handler) async {
          if (e.response?.statusCode == 401) {
            if (e.response?.headers.map.containsKey('new-token') ?? false) {
              final newToken = e.response!.headers.map['new-token']![0];
              var newTokenExpirationDateString = e.response!.headers.map['new-token-expiration']![0];
              newTokenExpirationDateString = newTokenExpirationDateString.substring(0, newTokenExpirationDateString.length - 6);
              final newTokenExpirationDateFormat = DateFormat('MM/dd/yyyy HH:mm:ss');
              var newTokenExpiration = newTokenExpirationDateFormat.parse(newTokenExpirationDateString);
              _authBloc!.add(AuthTokenChangedEvent(token: JwtToken(token: newToken, expiration: newTokenExpiration)));
              final options = Options(
                method: e.response!.requestOptions.method,
                headers: e.response!.requestOptions.headers,
              );
              if (options.headers != null) {
                options.headers!['Authorization'] = 'Bearer $newToken';
              }

              await Future.delayed(const Duration(seconds: 1));
              handler.resolve(await api.dio.request(e.response!.requestOptions.path,
                  data: e.response!.requestOptions.data, queryParameters: e.response!.requestOptions.queryParameters, options: options));
              return;
            }
          }
          handler.next(e);
        }));

    // api.dio.interceptors.removeWhere((element) => element is NamedInterceptorWrapper && element.name == 'logging');
    // api.dio.interceptors.add(loggingInterceptor);
  }

  void setupGroup(String groupId) {
    groupInitialized = true;
    api.dio.interceptors.add(NamedInterceptorWrapper(
      name: 'group',
      onRequest: (options, handler) {
        options.headers['Group-Id'] = groupId;
        return handler.next(options);
      },
    ));
  }

  void changeToken(String token) {
    api.dio.interceptors.removeWhere((element) => element is NamedInterceptorWrapper && element.name == 'auth');
    api.dio.interceptors.add(NamedInterceptorWrapper(
      name: 'auth',
      onRequest: (options, handler) {
        options.headers['Authorization'] = "Bearer $token";
        return handler.next(options);
      },
    ));
  }

  void reset() {
    groupInitialized = false;
    api.dio.interceptors.removeWhere((element) => element is NamedInterceptorWrapper && element.name == 'auth');
    api.dio.interceptors.removeWhere((element) => element is NamedInterceptorWrapper && element.name == 'new-token');
    api.dio.interceptors.removeWhere((element) => element is NamedInterceptorWrapper && element.name == 'group');
  }

  bool hasGroup() {
    return groupInitialized;
  }
}
