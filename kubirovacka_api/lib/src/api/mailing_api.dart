//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:kubirovacka_api/src/api_util.dart';
import 'package:kubirovacka_api/src/model/mailing_target_type.dart';

class MailingApi {
  final Dio _dio;

  final Serializers _serializers;

  const MailingApi(this._dio, this._serializers);

  /// apiMailingMailingPost
  ///
  ///
  /// Parameters:
  /// * [targetType]
  /// * [subject]
  /// * [body]
  /// * [isHtml]
  /// * [groupId]
  /// * [emails]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> apiMailingMailingPost({
    required MailingTargetType targetType,
    required String subject,
    required String body,
    required bool isHtml,
    String? groupId,
    String? emails,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/Mailing/Mailing';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        if (groupId != null) r'group-id': groupId,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'Bearer',
            'keyName': 'Authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        r'TargetType': encodeFormParameter(
            _serializers, targetType, const FullType(MailingTargetType)),
        if (emails != null)
          r'Emails':
              encodeFormParameter(_serializers, emails, const FullType(String)),
        r'Subject':
            encodeFormParameter(_serializers, subject, const FullType(String)),
        r'Body':
            encodeFormParameter(_serializers, body, const FullType(String)),
        r'IsHtml':
            encodeFormParameter(_serializers, isHtml, const FullType(bool)),
      });
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }
}
