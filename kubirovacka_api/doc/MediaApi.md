# kubirovacka_api.api.MediaApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAdvertisingMediaBase64Get**](MediaApi.md#apiadvertisingmediabase64get) | **GET** /api/Advertising/Media/Base64 | Vrátí Base64 obrázek
[**apiAdvertisingMediaPost**](MediaApi.md#apiadvertisingmediapost) | **POST** /api/Advertising/Media | Nahraje obrázek


# **apiAdvertisingMediaBase64Get**
> String apiAdvertisingMediaBase64Get(id, groupId)

Vrátí Base64 obrázek

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getMediaApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id obŕazku
final String groupId = groupId_example; // String | 

try {
    final response = api.apiAdvertisingMediaBase64Get(id, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MediaApi->apiAdvertisingMediaBase64Get: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Id obŕazku | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

**String**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingMediaPost**
> String apiAdvertisingMediaPost(groupId, imageBase64)

Nahraje obrázek

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getMediaApi();
final String groupId = groupId_example; // String | 
final String imageBase64 = imageBase64_example; // String | 

try {
    final response = api.apiAdvertisingMediaPost(groupId, imageBase64);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MediaApi->apiAdvertisingMediaPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **imageBase64** | **String**|  | [optional] 

### Return type

**String**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

