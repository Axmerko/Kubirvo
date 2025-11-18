import 'package:equatable/equatable.dart';

class AuthState extends Equatable {
  final bool isLoggedIn;
  final bool isPremium;
  final String? groupId;

  const AuthState({required this.isLoggedIn, required this.isPremium, this.groupId});

  factory AuthState.init() {
    return const AuthState(isLoggedIn: false, isPremium: false, groupId: null);
  }

  AuthState clone() {
    return AuthState(isLoggedIn: isLoggedIn, isPremium: isPremium, groupId: groupId);
  }

  @override
  List<Object> get props => [isLoggedIn, isPremium, groupId ?? ''];
}

class AuthNotLoggedInState extends AuthState {
  const AuthNotLoggedInState() : super(isLoggedIn: false, isPremium: false, groupId: null);

  @override
  List<Object> get props => [isLoggedIn, isPremium, groupId ?? '',];

  @override
  AuthState clone() {
    return const AuthNotLoggedInState();
  }
}

class AuthLoginProcessingState extends AuthState {
  const AuthLoginProcessingState() : super(isLoggedIn: false, isPremium: false, groupId: null);

  @override
  List<Object> get props => [isLoggedIn, isPremium, groupId ?? ''];

  @override
  AuthState clone() {
    return const AuthLoginProcessingState();
  }
}

class AuthLoginFailedState extends AuthState {
  final String? error;

  const AuthLoginFailedState({this.error}) : super(isLoggedIn: false, isPremium: false, groupId: null);

  @override
  List<Object> get props => [isLoggedIn, isPremium, groupId ?? '', error ?? ''];

  @override
  AuthState clone() {
    return AuthLoginFailedState(error: error);
  }
}

class AuthNotReadyState extends AuthState {
  const AuthNotReadyState({required super.isPremium}) : super(isLoggedIn: true, groupId: null);

  @override
  List<Object> get props => [isLoggedIn, isPremium, groupId ?? ''];

  @override
  AuthState clone() {
    return AuthNotReadyState(isPremium: isPremium);
  }
}

class AuthReadyState extends AuthState {
  const AuthReadyState({required super.isPremium, required super.groupId}) : super(isLoggedIn: true);

  @override
  List<Object> get props => [isLoggedIn, isPremium, groupId!];

  @override
  AuthState clone() {
    return AuthReadyState(isPremium: isPremium, groupId: groupId!);
  }
}

class AuthPasswordResetProcessingState extends AuthState {
  const AuthPasswordResetProcessingState() : super(isLoggedIn: false, isPremium: false);
}

class AuthPasswordResetSuccessState extends AuthState {
  const AuthPasswordResetSuccessState() : super(isLoggedIn: false, isPremium: false);
}

class AuthPasswordResetFailedState extends AuthState {
  final String? error;

  const AuthPasswordResetFailedState({this.error}) : super(isLoggedIn: false, isPremium: false);

  @override
  List<Object> get props => [isLoggedIn, isPremium, groupId ?? '', error ?? ''];
}