# kubirovacka_api.api.TokenApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMainTokenPost**](TokenApi.md#apimaintokenpost) | **POST** /api/Main/Token | Vrací autentizační JWT token


# **apiMainTokenPost**
> GeneratedJwtDTO apiMainTokenPost(email, password)

Vrací autentizační JWT token

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getTokenApi();
final String email = email_example; // String | 
final String password = password_example; // String | 

try {
    final response = api.apiMainTokenPost(email, password);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TokenApi->apiMainTokenPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 
 **password** | **String**|  | 

### Return type

[**GeneratedJwtDTO**](GeneratedJwtDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

