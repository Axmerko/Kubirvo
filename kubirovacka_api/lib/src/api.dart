//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:kubirovacka_api/src/serializers.dart';
import 'package:kubirovacka_api/src/auth/api_key_auth.dart';
import 'package:kubirovacka_api/src/auth/basic_auth.dart';
import 'package:kubirovacka_api/src/auth/bearer_auth.dart';
import 'package:kubirovacka_api/src/auth/oauth.dart';
import 'package:kubirovacka_api/src/api/advertisement_api.dart';
import 'package:kubirovacka_api/src/api/company_api.dart';
import 'package:kubirovacka_api/src/api/delivery_note_api.dart';
import 'package:kubirovacka_api/src/api/diagnostic_api.dart';
import 'package:kubirovacka_api/src/api/feedback_api.dart';
import 'package:kubirovacka_api/src/api/file_upload_api.dart';
import 'package:kubirovacka_api/src/api/group_api.dart';
import 'package:kubirovacka_api/src/api/html_api.dart';
import 'package:kubirovacka_api/src/api/license_api.dart';
import 'package:kubirovacka_api/src/api/license_payment_api.dart';
import 'package:kubirovacka_api/src/api/localization_api.dart';
import 'package:kubirovacka_api/src/api/logs_list_api.dart';
import 'package:kubirovacka_api/src/api/logs_list_stats_api.dart';
import 'package:kubirovacka_api/src/api/mailing_api.dart';
import 'package:kubirovacka_api/src/api/media_api.dart';
import 'package:kubirovacka_api/src/api/report_api.dart';
import 'package:kubirovacka_api/src/api/role_api.dart';
import 'package:kubirovacka_api/src/api/shared_logs_list_api.dart';
import 'package:kubirovacka_api/src/api/sortiment_api.dart';
import 'package:kubirovacka_api/src/api/super_admin_stats_api.dart';
import 'package:kubirovacka_api/src/api/test_api.dart';
import 'package:kubirovacka_api/src/api/token_api.dart';
import 'package:kubirovacka_api/src/api/user_api.dart';
import 'package:kubirovacka_api/src/api/version_api.dart';
import 'package:kubirovacka_api/src/api/wood_log_list_status_api.dart';
import 'package:kubirovacka_api/src/api/wood_quality_api.dart';

class KubirovackaApi {
  static const String basePath = r'http://localhost';

  final Dio dio;
  final Serializers serializers;

  KubirovackaApi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor)
              as OAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor)
              as BearerAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor)
              as BasicAuthInterceptor)
          .authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this
                  .dio
                  .interceptors
                  .firstWhere((element) => element is ApiKeyAuthInterceptor)
              as ApiKeyAuthInterceptor)
          .apiKeys[name] = apiKey;
    }
  }

  /// Get AdvertisementApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AdvertisementApi getAdvertisementApi() {
    return AdvertisementApi(dio, serializers);
  }

  /// Get CompanyApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CompanyApi getCompanyApi() {
    return CompanyApi(dio, serializers);
  }

  /// Get DeliveryNoteApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DeliveryNoteApi getDeliveryNoteApi() {
    return DeliveryNoteApi(dio, serializers);
  }

  /// Get DiagnosticApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DiagnosticApi getDiagnosticApi() {
    return DiagnosticApi(dio, serializers);
  }

  /// Get FeedbackApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FeedbackApi getFeedbackApi() {
    return FeedbackApi(dio, serializers);
  }

  /// Get FileUploadApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FileUploadApi getFileUploadApi() {
    return FileUploadApi(dio, serializers);
  }

  /// Get GroupApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GroupApi getGroupApi() {
    return GroupApi(dio, serializers);
  }

  /// Get HtmlApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HtmlApi getHtmlApi() {
    return HtmlApi(dio, serializers);
  }

  /// Get LicenseApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LicenseApi getLicenseApi() {
    return LicenseApi(dio, serializers);
  }

  /// Get LicensePaymentApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LicensePaymentApi getLicensePaymentApi() {
    return LicensePaymentApi(dio, serializers);
  }

  /// Get LocalizationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LocalizationApi getLocalizationApi() {
    return LocalizationApi(dio, serializers);
  }

  /// Get LogsListApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LogsListApi getLogsListApi() {
    return LogsListApi(dio, serializers);
  }

  /// Get LogsListStatsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LogsListStatsApi getLogsListStatsApi() {
    return LogsListStatsApi(dio, serializers);
  }

  /// Get MailingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MailingApi getMailingApi() {
    return MailingApi(dio, serializers);
  }

  /// Get MediaApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MediaApi getMediaApi() {
    return MediaApi(dio, serializers);
  }

  /// Get ReportApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReportApi getReportApi() {
    return ReportApi(dio, serializers);
  }

  /// Get RoleApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RoleApi getRoleApi() {
    return RoleApi(dio, serializers);
  }

  /// Get SharedLogsListApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SharedLogsListApi getSharedLogsListApi() {
    return SharedLogsListApi(dio, serializers);
  }

  /// Get SortimentApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SortimentApi getSortimentApi() {
    return SortimentApi(dio, serializers);
  }

  /// Get SuperAdminStatsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SuperAdminStatsApi getSuperAdminStatsApi() {
    return SuperAdminStatsApi(dio, serializers);
  }

  /// Get TestApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TestApi getTestApi() {
    return TestApi(dio, serializers);
  }

  /// Get TokenApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TokenApi getTokenApi() {
    return TokenApi(dio, serializers);
  }

  /// Get UserApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserApi getUserApi() {
    return UserApi(dio, serializers);
  }

  /// Get VersionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  VersionApi getVersionApi() {
    return VersionApi(dio, serializers);
  }

  /// Get WoodLogListStatusApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WoodLogListStatusApi getWoodLogListStatusApi() {
    return WoodLogListStatusApi(dio, serializers);
  }

  /// Get WoodQualityApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WoodQualityApi getWoodQualityApi() {
    return WoodQualityApi(dio, serializers);
  }
}
