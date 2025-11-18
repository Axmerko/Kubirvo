# kubirovacka_api.api.LogsListStatsApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMainLogsListStatsEarningsGraphDataGet**](LogsListStatsApi.md#apimainlogsliststatsearningsgraphdataget) | **GET** /api/Main/LogsListStats/EarningsGraphData | Vrací statistiky výdělků uživatele
[**apiMainLogsListStatsEarningsStatsGet**](LogsListStatsApi.md#apimainlogsliststatsearningsstatsget) | **GET** /api/Main/LogsListStats/EarningsStats | Vrací statistiky výdělků uživatele
[**apiMainLogsListStatsGroupEarningsGraphDataGet**](LogsListStatsApi.md#apimainlogsliststatsgroupearningsgraphdataget) | **GET** /api/Main/LogsListStats/GroupEarningsGraphData | Vrací statistiky výdělků skupiny
[**apiMainLogsListStatsGroupEarningsStatsGet**](LogsListStatsApi.md#apimainlogsliststatsgroupearningsstatsget) | **GET** /api/Main/LogsListStats/GroupEarningsStats | Vrací statistiky výdělků skupiny
[**apiMainLogsListStatsGroupPerformanceGraphDataGet**](LogsListStatsApi.md#apimainlogsliststatsgroupperformancegraphdataget) | **GET** /api/Main/LogsListStats/GroupPerformanceGraphData | Vrací statistiky těžby skupiny
[**apiMainLogsListStatsGroupPerformanceStatsGet**](LogsListStatsApi.md#apimainlogsliststatsgroupperformancestatsget) | **GET** /api/Main/LogsListStats/GroupPerformanceStats | Vrací statistiky těžby skupiny
[**apiMainLogsListStatsGroupPerformanceStatsPerMemberGet**](LogsListStatsApi.md#apimainlogsliststatsgroupperformancestatspermemberget) | **GET** /api/Main/LogsListStats/GroupPerformanceStatsPerMember | Vrací statistiky těžby skupiny pro jednotlivé členy
[**apiMainLogsListStatsPerformanceGraphDataGet**](LogsListStatsApi.md#apimainlogsliststatsperformancegraphdataget) | **GET** /api/Main/LogsListStats/PerformanceGraphData | Vrací statistiky těžby uživatele
[**apiMainLogsListStatsPerformanceStatsGet**](LogsListStatsApi.md#apimainlogsliststatsperformancestatsget) | **GET** /api/Main/LogsListStats/PerformanceStats | Vrací statistiky těžby uživatele


# **apiMainLogsListStatsEarningsGraphDataGet**
> GraphDataDto apiMainLogsListStatsEarningsGraphDataGet(timespan, groupId)

Vrací statistiky výdělků uživatele

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListStatsApi();
final StatsTimespan timespan = ; // StatsTimespan | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainLogsListStatsEarningsGraphDataGet(timespan, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LogsListStatsApi->apiMainLogsListStatsEarningsGraphDataGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timespan** | [**StatsTimespan**](.md)|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**GraphDataDto**](GraphDataDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListStatsEarningsStatsGet**
> WoodLogListStatDTO apiMainLogsListStatsEarningsStatsGet(from, to, groupId)

Vrací statistiky výdělků uživatele

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListStatsApi();
final DateTime from = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime to = 2013-10-20T19:20:30+01:00; // DateTime | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainLogsListStatsEarningsStatsGet(from, to, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LogsListStatsApi->apiMainLogsListStatsEarningsStatsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **DateTime**|  | [optional] 
 **to** | **DateTime**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**WoodLogListStatDTO**](WoodLogListStatDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListStatsGroupEarningsGraphDataGet**
> GraphDataDto apiMainLogsListStatsGroupEarningsGraphDataGet(timespan, groupId)

Vrací statistiky výdělků skupiny

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListStatsApi();
final StatsTimespan timespan = ; // StatsTimespan | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainLogsListStatsGroupEarningsGraphDataGet(timespan, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LogsListStatsApi->apiMainLogsListStatsGroupEarningsGraphDataGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timespan** | [**StatsTimespan**](.md)|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**GraphDataDto**](GraphDataDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListStatsGroupEarningsStatsGet**
> WoodLogListStatDTO apiMainLogsListStatsGroupEarningsStatsGet(from, to, groupId)

Vrací statistiky výdělků skupiny

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListStatsApi();
final DateTime from = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime to = 2013-10-20T19:20:30+01:00; // DateTime | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainLogsListStatsGroupEarningsStatsGet(from, to, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LogsListStatsApi->apiMainLogsListStatsGroupEarningsStatsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **DateTime**|  | [optional] 
 **to** | **DateTime**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**WoodLogListStatDTO**](WoodLogListStatDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListStatsGroupPerformanceGraphDataGet**
> GraphDataDto apiMainLogsListStatsGroupPerformanceGraphDataGet(timespan, groupId)

Vrací statistiky těžby skupiny

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListStatsApi();
final StatsTimespan timespan = ; // StatsTimespan | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainLogsListStatsGroupPerformanceGraphDataGet(timespan, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LogsListStatsApi->apiMainLogsListStatsGroupPerformanceGraphDataGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timespan** | [**StatsTimespan**](.md)|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**GraphDataDto**](GraphDataDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListStatsGroupPerformanceStatsGet**
> WoodLogListStatDTO apiMainLogsListStatsGroupPerformanceStatsGet(from, to, groupId)

Vrací statistiky těžby skupiny

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListStatsApi();
final DateTime from = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime to = 2013-10-20T19:20:30+01:00; // DateTime | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainLogsListStatsGroupPerformanceStatsGet(from, to, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LogsListStatsApi->apiMainLogsListStatsGroupPerformanceStatsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **DateTime**|  | [optional] 
 **to** | **DateTime**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**WoodLogListStatDTO**](WoodLogListStatDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListStatsGroupPerformanceStatsPerMemberGet**
> GraphDataDto apiMainLogsListStatsGroupPerformanceStatsPerMemberGet(timespan, groupId)

Vrací statistiky těžby skupiny pro jednotlivé členy

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListStatsApi();
final StatsTimespan timespan = ; // StatsTimespan | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainLogsListStatsGroupPerformanceStatsPerMemberGet(timespan, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LogsListStatsApi->apiMainLogsListStatsGroupPerformanceStatsPerMemberGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timespan** | [**StatsTimespan**](.md)|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**GraphDataDto**](GraphDataDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListStatsPerformanceGraphDataGet**
> GraphDataDto apiMainLogsListStatsPerformanceGraphDataGet(timespan, groupId)

Vrací statistiky těžby uživatele

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListStatsApi();
final StatsTimespan timespan = ; // StatsTimespan | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainLogsListStatsPerformanceGraphDataGet(timespan, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LogsListStatsApi->apiMainLogsListStatsPerformanceGraphDataGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timespan** | [**StatsTimespan**](.md)|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**GraphDataDto**](GraphDataDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListStatsPerformanceStatsGet**
> WoodLogListStatDTO apiMainLogsListStatsPerformanceStatsGet(from, to, groupId)

Vrací statistiky těžby uživatele

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListStatsApi();
final DateTime from = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime to = 2013-10-20T19:20:30+01:00; // DateTime | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainLogsListStatsPerformanceStatsGet(from, to, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LogsListStatsApi->apiMainLogsListStatsPerformanceStatsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **DateTime**|  | [optional] 
 **to** | **DateTime**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**WoodLogListStatDTO**](WoodLogListStatDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

