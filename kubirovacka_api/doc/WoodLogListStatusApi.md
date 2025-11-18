# kubirovacka_api.api.WoodLogListStatusApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMainWoodLogListStatusGet**](WoodLogListStatusApi.md#apimainwoodlogliststatusget) | **GET** /api/Main/WoodLogListStatus | 


# **apiMainWoodLogListStatusGet**
> BuiltList<WoodLogListStatus> apiMainWoodLogListStatusGet(groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getWoodLogListStatusApi();
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainWoodLogListStatusGet(groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WoodLogListStatusApi->apiMainWoodLogListStatusGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;WoodLogListStatus&gt;**](WoodLogListStatus.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

