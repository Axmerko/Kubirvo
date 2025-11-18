import 'package:kubirovacka_one/models/jwt_token.dart';

abstract class AuthEvent {}

class InitAuthEvent extends AuthEvent {}

class AuthUserLoggedInEvent extends AuthEvent {
  final String email;
  final String password;

  AuthUserLoggedInEvent({required this.email, required this.password});
}

class AuthUserLoggedOutEvent extends AuthEvent {

  AuthUserLoggedOutEvent();
}

class AuthTokenChangedEvent extends AuthEvent {
  final JwtToken token;

  AuthTokenChangedEvent({required this.token});
}

class AuthPasswordResetRequestedEvent extends AuthEvent {
  final String email;

  AuthPasswordResetRequestedEvent({required this.email});
}