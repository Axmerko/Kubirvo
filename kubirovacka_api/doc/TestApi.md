# kubirovacka_api.api.TestApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMainTestPost**](TestApi.md#apimaintestpost) | **POST** /api/Main/Test | 


# **apiMainTestPost**
> apiMainTestPost(dto, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getTestApi();
final DateTime dto = 2013-10-20T19:20:30+01:00; // DateTime | 
final String groupId = groupId_example; // String | 

try {
    api.apiMainTestPost(dto, groupId);
} catch on DioException (e) {
    print('Exception when calling TestApi->apiMainTestPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dto** | **DateTime**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

