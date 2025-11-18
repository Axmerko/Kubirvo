import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:event/event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:kubirovacka_one/apis/api_client.dart';
import 'package:kubirovacka_one/events/auth_events.dart';
import 'package:kubirovacka_one/helpers/connection_helper.dart';
import 'package:kubirovacka_one/models/jwt_token.dart';

import '../../../services/auth_service.dart';
import 'auth_event.dart';
import 'auth_state.dart';

final getIt = GetIt.instance;

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final _authService = getIt.get<AuthService>();
  final _apiClient = getIt.get<ApiClient>();
  final _userInitCompleteEvent = getIt.get<Event<UserInitCompleteEvent>>();
  Timer? _loginRetryTimer;

  AuthBloc() : super(AuthState.init()) {
    on<InitAuthEvent>(_init);
    on<AuthUserLoggedInEvent>(_login);
    on<AuthUserLoggedOutEvent>(_logout);
    on<AuthTokenChangedEvent>(_changeToken);
    on<AuthPasswordResetRequestedEvent>(_resetPassword);
  }

  void _setupLoginRetry() {
    if (_loginRetryTimer != null) return;
    _loginRetryTimer = Timer.periodic(const Duration(seconds: 15), (timer) async {
      if (await isOnline()) {
        _loginRetryTimer?.cancel();
        _loginRetryTimer = null;
        add(InitAuthEvent());
      }
    });
  }

  Future _init(InitAuthEvent event, Emitter<AuthState> emit) async {
    if (_authService.isLoggedIn()) {
      emit(AuthNotReadyState(isPremium: _authService.isPremium()));
      _apiClient.setupAuth(_authService.getAuthToken()!.token, this);

      if (await isOnline()) {
        try {
          var groupResponse = await _apiClient.api.getGroupApi().apiMainGroupGet();
          final homeGroupId = groupResponse.data!.firstWhere((e) => (e.isHomeGroup ?? false)).id!;
          _authService.setGroupId(homeGroupId);
          _apiClient.setupGroup(homeGroupId);
          _userInitCompleteEvent.broadcast(UserInitCompleteEvent(_authService.isPremium(), homeGroupId));
          emit(AuthReadyState(
            groupId: homeGroupId,
            isPremium: _authService.isPremium(),
          ));
        } catch (e) {
          log("Error while fetching group: $e");
          _setupLoginRetry();
        }
      } else {
        _setupLoginRetry();
      }
    } else {
      emit(const AuthNotLoggedInState());
    }
  }

  Future _login(AuthUserLoggedInEvent event, Emitter<AuthState> emit) async {
    emit(const AuthLoginProcessingState());
    try {
      var response = await _apiClient.api.getTokenApi().apiMainTokenPost(
        email: event.email,
        password: event.password,
      );

      await _authService.setAuthToken(JwtToken(token: response.data!.token!, expiration: response.data!.expiration!));
      await _init(InitAuthEvent(), emit);
    } catch (error) {
      if (error is DioException) {
        var responseBody = error.response?.data;
        if (responseBody != null) {
          var message = responseBody['message'];
          if (message != null) {
            emit(AuthLoginFailedState(error: message));
          } else {
            emit(const AuthLoginFailedState());
          }
        }
      } else {
        emit(const AuthLoginFailedState(error: "Zkontrolujte prosím, jestli jste připojeni k internetu."));
      }
    }
  }

  void _logout(AuthUserLoggedOutEvent event, Emitter<AuthState> emit) async {
    _authService.logout();
    _apiClient.reset();
    emit(const AuthNotLoggedInState());
  }

  Future _changeToken(AuthTokenChangedEvent event, Emitter<AuthState> emit) async {
    await _authService.setAuthToken(event.token);
    _apiClient.changeToken(event.token.token);
  }


  Future<void> _resetPassword(AuthPasswordResetRequestedEvent event, Emitter<AuthState> emit) async {
    emit(const AuthPasswordResetProcessingState());
    try {
      await _apiClient.api.getUserApi().apiMainUserPasswordResetEmailPost(email: event.email);
      emit(const AuthPasswordResetSuccessState());
    } catch (e) {
      if (e is DioException && e.response?.data != null) {
        emit(AuthPasswordResetFailedState(error: e.response?.data['message'] ?? 'Neznámá chyba'));
      } else {
        emit(const AuthPasswordResetFailedState(error: 'Nepodařilo se odeslat žádost. Zkontrolujte připojení k internetu.'));
      }
    }
  }
}
