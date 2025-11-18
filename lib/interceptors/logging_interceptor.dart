import 'package:flutter/material.dart';

import 'named_interceptor_wrapper.dart';

final loggingInterceptor = NamedInterceptorWrapper(
  name: 'logging',
  onRequest: (options, handler) {
    debugPrint('------------------------------------------');
    debugPrint('Request: ${options.method} ${options.path}');
    debugPrint('Request data: ${options.data}');
    debugPrint('Request headers: ${options.headers}');
    debugPrint('------------------------------------------');
    return handler.next(options);
  },
  onResponse: (response, handler) {
    debugPrint('------------------------------------------');
    debugPrint('Response: ${response.statusCode} ${response.statusMessage}');
    debugPrint('Response data: ${response.data}');
    debugPrint('Response headers: ${response.headers}');
    debugPrint('------------------------------------------');
    return handler.next(response);
  },
  onError: (error, handler) {
    debugPrint('------------------------------------------');
    debugPrint('Error: ${error.response?.statusCode} ${error.response?.statusMessage}');
    debugPrint('Error data: ${error.response?.data}');
    debugPrint('Error headers: ${error.response?.headers}');
    debugPrint('------------------------------------------');
    return handler.next(error);
  },
);