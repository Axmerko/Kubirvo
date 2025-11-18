# kubirovacka_api.api.DeliveryNoteApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMainDeliveryNoteByGroupGet**](DeliveryNoteApi.md#apimaindeliverynotebygroupget) | **GET** /api/Main/DeliveryNote/ByGroup | 
[**apiMainDeliveryNoteByUserGet**](DeliveryNoteApi.md#apimaindeliverynotebyuserget) | **GET** /api/Main/DeliveryNote/ByUser | 
[**apiMainDeliveryNoteGenerateRandomPost**](DeliveryNoteApi.md#apimaindeliverynotegeneraterandompost) | **POST** /api/Main/DeliveryNote/GenerateRandom | 
[**apiMainDeliveryNoteIdGet**](DeliveryNoteApi.md#apimaindeliverynoteidget) | **GET** /api/Main/DeliveryNote/{id} | 
[**apiMainDeliveryNoteIdLockedPatch**](DeliveryNoteApi.md#apimaindeliverynoteidlockedpatch) | **PATCH** /api/Main/DeliveryNote/{id}/locked | 
[**apiMainDeliveryNoteIdPhotosPhotoIdDelete**](DeliveryNoteApi.md#apimaindeliverynoteidphotosphotoiddelete) | **DELETE** /api/Main/DeliveryNote/{id}/photos/{photoId} | 
[**apiMainDeliveryNoteIdPhotosPost**](DeliveryNoteApi.md#apimaindeliverynoteidphotospost) | **POST** /api/Main/DeliveryNote/{id}/photos | 
[**apiMainDeliveryNotePost**](DeliveryNoteApi.md#apimaindeliverynotepost) | **POST** /api/Main/DeliveryNote | 


# **apiMainDeliveryNoteByGroupGet**
> BuiltList<GetDeliveryNoteDTO> apiMainDeliveryNoteByGroupGet(onlyNotImported, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getDeliveryNoteApi();
final bool onlyNotImported = true; // bool | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainDeliveryNoteByGroupGet(onlyNotImported, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DeliveryNoteApi->apiMainDeliveryNoteByGroupGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **onlyNotImported** | **bool**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;GetDeliveryNoteDTO&gt;**](GetDeliveryNoteDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainDeliveryNoteByUserGet**
> BuiltList<GetDeliveryNoteDTO> apiMainDeliveryNoteByUserGet(onlyNotImported, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getDeliveryNoteApi();
final bool onlyNotImported = true; // bool | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainDeliveryNoteByUserGet(onlyNotImported, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DeliveryNoteApi->apiMainDeliveryNoteByUserGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **onlyNotImported** | **bool**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;GetDeliveryNoteDTO&gt;**](GetDeliveryNoteDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainDeliveryNoteGenerateRandomPost**
> BuiltList<String> apiMainDeliveryNoteGenerateRandomPost(groupId, body)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getDeliveryNoteApi();
final String groupId = groupId_example; // String | 
final int body = 56; // int | 

try {
    final response = api.apiMainDeliveryNoteGenerateRandomPost(groupId, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DeliveryNoteApi->apiMainDeliveryNoteGenerateRandomPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **body** | **int**|  | [optional] 

### Return type

**BuiltList&lt;String&gt;**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainDeliveryNoteIdGet**
> DetailedGetDeliveryNoteDTO apiMainDeliveryNoteIdGet(id, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getDeliveryNoteApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainDeliveryNoteIdGet(id, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DeliveryNoteApi->apiMainDeliveryNoteIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **groupId** | **String**|  | [optional] 

### Return type

[**DetailedGetDeliveryNoteDTO**](DetailedGetDeliveryNoteDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainDeliveryNoteIdLockedPatch**
> GetDeliveryNoteDTO apiMainDeliveryNoteIdLockedPatch(id, groupId, updateLockedDTO)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getDeliveryNoteApi();
final String id = id_example; // String | 
final String groupId = groupId_example; // String | 
final UpdateLockedDTO updateLockedDTO = ; // UpdateLockedDTO | 

try {
    final response = api.apiMainDeliveryNoteIdLockedPatch(id, groupId, updateLockedDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DeliveryNoteApi->apiMainDeliveryNoteIdLockedPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **groupId** | **String**|  | [optional] 
 **updateLockedDTO** | [**UpdateLockedDTO**](UpdateLockedDTO.md)|  | [optional] 

### Return type

[**GetDeliveryNoteDTO**](GetDeliveryNoteDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainDeliveryNoteIdPhotosPhotoIdDelete**
> apiMainDeliveryNoteIdPhotosPhotoIdDelete(id, photoId, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getDeliveryNoteApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String photoId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    api.apiMainDeliveryNoteIdPhotosPhotoIdDelete(id, photoId, groupId);
} catch on DioException (e) {
    print('Exception when calling DeliveryNoteApi->apiMainDeliveryNoteIdPhotosPhotoIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **photoId** | **String**|  | 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainDeliveryNoteIdPhotosPost**
> GetDeliveryNotePhotoDTO apiMainDeliveryNoteIdPhotosPost(id, groupId, file)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getDeliveryNoteApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.apiMainDeliveryNoteIdPhotosPost(id, groupId, file);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DeliveryNoteApi->apiMainDeliveryNoteIdPhotosPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **groupId** | **String**|  | [optional] 
 **file** | **MultipartFile**|  | [optional] 

### Return type

[**GetDeliveryNotePhotoDTO**](GetDeliveryNotePhotoDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainDeliveryNotePost**
> GetDeliveryNoteDTO apiMainDeliveryNotePost(groupId, createDeliveryNoteDTO)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getDeliveryNoteApi();
final String groupId = groupId_example; // String | 
final CreateDeliveryNoteDTO createDeliveryNoteDTO = ; // CreateDeliveryNoteDTO | 

try {
    final response = api.apiMainDeliveryNotePost(groupId, createDeliveryNoteDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DeliveryNoteApi->apiMainDeliveryNotePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **createDeliveryNoteDTO** | [**CreateDeliveryNoteDTO**](CreateDeliveryNoteDTO.md)|  | [optional] 

### Return type

[**GetDeliveryNoteDTO**](GetDeliveryNoteDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

