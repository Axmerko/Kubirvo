# kubirovacka_api.api.SharedLogsListApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMainSharedLogsListAcceptPost**](SharedLogsListApi.md#apimainsharedlogslistacceptpost) | **POST** /api/Main/SharedLogsList/Accept | 
[**apiMainSharedLogsListGet**](SharedLogsListApi.md#apimainsharedlogslistget) | **GET** /api/Main/SharedLogsList | 
[**apiMainSharedLogsListListGet**](SharedLogsListApi.md#apimainsharedlogslistlistget) | **GET** /api/Main/SharedLogsList/List | 
[**apiMainSharedLogsListPost**](SharedLogsListApi.md#apimainsharedlogslistpost) | **POST** /api/Main/SharedLogsList | 


# **apiMainSharedLogsListAcceptPost**
> apiMainSharedLogsListAcceptPost(listId, sendId, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getSharedLogsListApi();
final String listId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String sendId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    api.apiMainSharedLogsListAcceptPost(listId, sendId, groupId);
} catch on DioException (e) {
    print('Exception when calling SharedLogsListApi->apiMainSharedLogsListAcceptPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **String**|  | [optional] 
 **sendId** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainSharedLogsListGet**
> WoodLogListSendDTO apiMainSharedLogsListGet(listId, sendId, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getSharedLogsListApi();
final String listId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String sendId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainSharedLogsListGet(listId, sendId, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SharedLogsListApi->apiMainSharedLogsListGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **String**|  | [optional] 
 **sendId** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**WoodLogListSendDTO**](WoodLogListSendDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainSharedLogsListListGet**
> BuiltList<WoodLogListSendDTO> apiMainSharedLogsListListGet(sendId, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getSharedLogsListApi();
final String sendId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainSharedLogsListListGet(sendId, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SharedLogsListApi->apiMainSharedLogsListListGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendId** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;WoodLogListSendDTO&gt;**](WoodLogListSendDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainSharedLogsListPost**
> apiMainSharedLogsListPost(groupId, shareLogListDTO)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getSharedLogsListApi();
final String groupId = groupId_example; // String | 
final ShareLogListDTO shareLogListDTO = ; // ShareLogListDTO | 

try {
    api.apiMainSharedLogsListPost(groupId, shareLogListDTO);
} catch on DioException (e) {
    print('Exception when calling SharedLogsListApi->apiMainSharedLogsListPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **shareLogListDTO** | [**ShareLogListDTO**](ShareLogListDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

