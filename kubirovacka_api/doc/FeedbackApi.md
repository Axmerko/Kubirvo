# kubirovacka_api.api.FeedbackApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMainFeedbackGet**](FeedbackApi.md#apimainfeedbackget) | **GET** /api/Main/Feedback | 
[**apiMainFeedbackIdGet**](FeedbackApi.md#apimainfeedbackidget) | **GET** /api/Main/Feedback/{id} | 
[**apiMainFeedbackPost**](FeedbackApi.md#apimainfeedbackpost) | **POST** /api/Main/Feedback | Přidá změtnou vazbu
[**apiMainFeedbackStatusPatch**](FeedbackApi.md#apimainfeedbackstatuspatch) | **PATCH** /api/Main/Feedback/Status | 


# **apiMainFeedbackGet**
> BuiltList<FeedbackDTO> apiMainFeedbackGet(status, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getFeedbackApi();
final FeedbackStatus status = ; // FeedbackStatus | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainFeedbackGet(status, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FeedbackApi->apiMainFeedbackGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**FeedbackStatus**](.md)|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;FeedbackDTO&gt;**](FeedbackDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainFeedbackIdGet**
> FeedbackDTO apiMainFeedbackIdGet(id, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getFeedbackApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainFeedbackIdGet(id, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FeedbackApi->apiMainFeedbackIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **groupId** | **String**|  | [optional] 

### Return type

[**FeedbackDTO**](FeedbackDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainFeedbackPost**
> apiMainFeedbackPost(groupId, feedbackDTO)

Přidá změtnou vazbu

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getFeedbackApi();
final String groupId = groupId_example; // String | 
final FeedbackDTO feedbackDTO = ; // FeedbackDTO | 

try {
    api.apiMainFeedbackPost(groupId, feedbackDTO);
} catch on DioException (e) {
    print('Exception when calling FeedbackApi->apiMainFeedbackPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **feedbackDTO** | [**FeedbackDTO**](FeedbackDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainFeedbackStatusPatch**
> FeedbackDTO apiMainFeedbackStatusPatch(id, status, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getFeedbackApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final FeedbackStatus status = ; // FeedbackStatus | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainFeedbackStatusPatch(id, status, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FeedbackApi->apiMainFeedbackStatusPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **status** | [**FeedbackStatus**](.md)|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**FeedbackDTO**](FeedbackDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

