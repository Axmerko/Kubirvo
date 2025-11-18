import 'package:dio/dio.dart';

class NamedInterceptorWrapper extends InterceptorsWrapper {
  final String name;
  NamedInterceptorWrapper({
    required this.name,
    super.onRequest,
    super.onResponse,
    super.onError,
  });
}