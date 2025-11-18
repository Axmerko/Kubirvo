# kubirovacka_api.api.LogsListApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMainLogsListDelete**](LogsListApi.md#apimainlogslistdelete) | **DELETE** /api/Main/LogsList | Maže seznam
[**apiMainLogsListGet**](LogsListApi.md#apimainlogslistget) | **GET** /api/Main/LogsList | Vrací informace o seznamu
[**apiMainLogsListGridGroupPost**](LogsListApi.md#apimainlogslistgridgrouppost) | **POST** /api/Main/LogsList/GridGroup | Vrací seznamy skupiny
[**apiMainLogsListGridPersonalPost**](LogsListApi.md#apimainlogslistgridpersonalpost) | **POST** /api/Main/LogsList/GridPersonal | Vrací seznamy uživatele stručně
[**apiMainLogsListIdPut**](LogsListApi.md#apimainlogslistidput) | **PUT** /api/Main/LogsList/{id} | Aktualizuje Logs list
[**apiMainLogsListListGet**](LogsListApi.md#apimainlogslistlistget) | **GET** /api/Main/LogsList/List | 
[**apiMainLogsListListPersonalGet**](LogsListApi.md#apimainlogslistlistpersonalget) | **GET** /api/Main/LogsList/ListPersonal | 
[**apiMainLogsListPatch**](LogsListApi.md#apimainlogslistpatch) | **PATCH** /api/Main/LogsList | 
[**apiMainLogsListPost**](LogsListApi.md#apimainlogslistpost) | **POST** /api/Main/LogsList | Vytvoří nový seznam klád
[**apiMainLogsListRandomListsPost**](LogsListApi.md#apimainlogslistrandomlistspost) | **POST** /api/Main/LogsList/RandomLists | Vygeneruje nový náhodné seznamy klád
[**apiMainLogsListStatusPatch**](LogsListApi.md#apimainlogsliststatuspatch) | **PATCH** /api/Main/LogsList/Status | 
[**apiMainLogsListSummaryGet**](LogsListApi.md#apimainlogslistsummaryget) | **GET** /api/Main/LogsList/Summary | Vrací sumář seznamu


# **apiMainLogsListDelete**
> apiMainLogsListDelete(id, groupId)

Maže seznam

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    api.apiMainLogsListDelete(id, groupId);
} catch on DioException (e) {
    print('Exception when calling LogsListApi->apiMainLogsListDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListGet**
> WoodLogListDTO apiMainLogsListGet(logsListId, groupId)

Vrací informace o seznamu

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListApi();
final String logsListId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainLogsListGet(logsListId, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LogsListApi->apiMainLogsListGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logsListId** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**WoodLogListDTO**](WoodLogListDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListGridGroupPost**
> WoodLogListWithPerformanceAndCreatorDTOGridDTO apiMainLogsListGridGroupPost(groupId, gridQueryDTO)

Vrací seznamy skupiny

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListApi();
final String groupId = groupId_example; // String | 
final GridQueryDTO gridQueryDTO = ; // GridQueryDTO | 

try {
    final response = api.apiMainLogsListGridGroupPost(groupId, gridQueryDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LogsListApi->apiMainLogsListGridGroupPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **gridQueryDTO** | [**GridQueryDTO**](GridQueryDTO.md)|  | [optional] 

### Return type

[**WoodLogListWithPerformanceAndCreatorDTOGridDTO**](WoodLogListWithPerformanceAndCreatorDTOGridDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListGridPersonalPost**
> WoodLogListWithPerformanceDTOGridDTO apiMainLogsListGridPersonalPost(groupId, gridQueryDTO)

Vrací seznamy uživatele stručně

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListApi();
final String groupId = groupId_example; // String | 
final GridQueryDTO gridQueryDTO = ; // GridQueryDTO | 

try {
    final response = api.apiMainLogsListGridPersonalPost(groupId, gridQueryDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LogsListApi->apiMainLogsListGridPersonalPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **gridQueryDTO** | [**GridQueryDTO**](GridQueryDTO.md)|  | [optional] 

### Return type

[**WoodLogListWithPerformanceDTOGridDTO**](WoodLogListWithPerformanceDTOGridDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListIdPut**
> apiMainLogsListIdPut(id, groupId, woodLogListDTO)

Aktualizuje Logs list

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id seznamu k nahrazení
final String groupId = groupId_example; // String | 
final WoodLogListDTO woodLogListDTO = ; // WoodLogListDTO | Objekt seznamu klád

try {
    api.apiMainLogsListIdPut(id, groupId, woodLogListDTO);
} catch on DioException (e) {
    print('Exception when calling LogsListApi->apiMainLogsListIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Id seznamu k nahrazení | 
 **groupId** | **String**|  | [optional] 
 **woodLogListDTO** | [**WoodLogListDTO**](WoodLogListDTO.md)| Objekt seznamu klád | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListListGet**
> BuiltList<WoodLogListDTO> apiMainLogsListListGet(filter, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListApi();
final String filter = filter_example; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainLogsListListGet(filter, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LogsListApi->apiMainLogsListListGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;WoodLogListDTO&gt;**](WoodLogListDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListListPersonalGet**
> BuiltList<WoodLogListDTO> apiMainLogsListListPersonalGet(filter, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListApi();
final String filter = filter_example; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainLogsListListPersonalGet(filter, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LogsListApi->apiMainLogsListListPersonalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;WoodLogListDTO&gt;**](WoodLogListDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListPatch**
> apiMainLogsListPatch(groupId, woodLogListDTO)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListApi();
final String groupId = groupId_example; // String | 
final WoodLogListDTO woodLogListDTO = ; // WoodLogListDTO | 

try {
    api.apiMainLogsListPatch(groupId, woodLogListDTO);
} catch on DioException (e) {
    print('Exception when calling LogsListApi->apiMainLogsListPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **woodLogListDTO** | [**WoodLogListDTO**](WoodLogListDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListPost**
> WoodLogListDTO apiMainLogsListPost(groupId, woodLogListDTO)

Vytvoří nový seznam klád

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListApi();
final String groupId = groupId_example; // String | 
final WoodLogListDTO woodLogListDTO = ; // WoodLogListDTO | Objekt seznamu klád

try {
    final response = api.apiMainLogsListPost(groupId, woodLogListDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LogsListApi->apiMainLogsListPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **woodLogListDTO** | [**WoodLogListDTO**](WoodLogListDTO.md)| Objekt seznamu klád | [optional] 

### Return type

[**WoodLogListDTO**](WoodLogListDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListRandomListsPost**
> BuiltList<WoodLogListDTO> apiMainLogsListRandomListsPost(groupId, userId, groupId2, listsCount)

Vygeneruje nový náhodné seznamy klád

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListApi();
final String groupId = groupId_example; // String | 
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId2 = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final int listsCount = 56; // int | 

try {
    final response = api.apiMainLogsListRandomListsPost(groupId, userId, groupId2, listsCount);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LogsListApi->apiMainLogsListRandomListsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 
 **groupId2** | **String**|  | [optional] 
 **listsCount** | **int**|  | [optional] 

### Return type

[**BuiltList&lt;WoodLogListDTO&gt;**](WoodLogListDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListStatusPatch**
> apiMainLogsListStatusPatch(listId, statusId, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListApi();
final String listId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final int statusId = 56; // int | 
final String groupId = groupId_example; // String | 

try {
    api.apiMainLogsListStatusPatch(listId, statusId, groupId);
} catch on DioException (e) {
    print('Exception when calling LogsListApi->apiMainLogsListStatusPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **String**|  | [optional] 
 **statusId** | **int**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLogsListSummaryGet**
> WoodLogListSummaryDTO apiMainLogsListSummaryGet(logsListId, groupId)

Vrací sumář seznamu

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLogsListApi();
final String logsListId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainLogsListSummaryGet(logsListId, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LogsListApi->apiMainLogsListSummaryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **logsListId** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**WoodLogListSummaryDTO**](WoodLogListSummaryDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

