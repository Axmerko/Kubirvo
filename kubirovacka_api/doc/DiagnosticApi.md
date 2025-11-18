# kubirovacka_api.api.DiagnosticApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMainDiagnosticGet**](DiagnosticApi.md#apimaindiagnosticget) | **GET** /api/Main/Diagnostic | 
[**apiMainDiagnosticPost**](DiagnosticApi.md#apimaindiagnosticpost) | **POST** /api/Main/Diagnostic | 


# **apiMainDiagnosticGet**
> BuiltList<DiagnosticLogDTO> apiMainDiagnosticGet(userId, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getDiagnosticApi();
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainDiagnosticGet(userId, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DiagnosticApi->apiMainDiagnosticGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;DiagnosticLogDTO&gt;**](DiagnosticLogDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainDiagnosticPost**
> apiMainDiagnosticPost(groupId, diagnosticLogDTO)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getDiagnosticApi();
final String groupId = groupId_example; // String | 
final BuiltList<DiagnosticLogDTO> diagnosticLogDTO = ; // BuiltList<DiagnosticLogDTO> | 

try {
    api.apiMainDiagnosticPost(groupId, diagnosticLogDTO);
} catch on DioException (e) {
    print('Exception when calling DiagnosticApi->apiMainDiagnosticPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **diagnosticLogDTO** | [**BuiltList&lt;DiagnosticLogDTO&gt;**](DiagnosticLogDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

