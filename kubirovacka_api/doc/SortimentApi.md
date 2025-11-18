# kubirovacka_api.api.SortimentApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMainSortimentByCodeCodeGet**](SortimentApi.md#apimainsortimentbycodecodeget) | **GET** /api/Main/Sortiment/ByCode/{code} | 
[**apiMainSortimentByGroupGet**](SortimentApi.md#apimainsortimentbygroupget) | **GET** /api/Main/Sortiment/ByGroup | 
[**apiMainSortimentByUserGet**](SortimentApi.md#apimainsortimentbyuserget) | **GET** /api/Main/Sortiment/ByUser | 
[**apiMainSortimentIdGet**](SortimentApi.md#apimainsortimentidget) | **GET** /api/Main/Sortiment/{id} | 
[**apiMainSortimentIdPut**](SortimentApi.md#apimainsortimentidput) | **PUT** /api/Main/Sortiment/{id} | 
[**apiMainSortimentPost**](SortimentApi.md#apimainsortimentpost) | **POST** /api/Main/Sortiment | 


# **apiMainSortimentByCodeCodeGet**
> SortimentDTO apiMainSortimentByCodeCodeGet(code, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getSortimentApi();
final String code = code_example; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainSortimentByCodeCodeGet(code, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SortimentApi->apiMainSortimentByCodeCodeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**|  | 
 **groupId** | **String**|  | [optional] 

### Return type

[**SortimentDTO**](SortimentDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainSortimentByGroupGet**
> BuiltList<SortimentDTO> apiMainSortimentByGroupGet(groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getSortimentApi();
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainSortimentByGroupGet(groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SortimentApi->apiMainSortimentByGroupGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;SortimentDTO&gt;**](SortimentDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainSortimentByUserGet**
> BuiltList<SortimentDTO> apiMainSortimentByUserGet(groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getSortimentApi();
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainSortimentByUserGet(groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SortimentApi->apiMainSortimentByUserGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;SortimentDTO&gt;**](SortimentDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainSortimentIdGet**
> SortimentDTO apiMainSortimentIdGet(id, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getSortimentApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainSortimentIdGet(id, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SortimentApi->apiMainSortimentIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **groupId** | **String**|  | [optional] 

### Return type

[**SortimentDTO**](SortimentDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainSortimentIdPut**
> SortimentDTO apiMainSortimentIdPut(id, groupId, createSortimentDTO)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getSortimentApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 
final CreateSortimentDTO createSortimentDTO = ; // CreateSortimentDTO | 

try {
    final response = api.apiMainSortimentIdPut(id, groupId, createSortimentDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SortimentApi->apiMainSortimentIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **groupId** | **String**|  | [optional] 
 **createSortimentDTO** | [**CreateSortimentDTO**](CreateSortimentDTO.md)|  | [optional] 

### Return type

[**SortimentDTO**](SortimentDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainSortimentPost**
> SortimentDTO apiMainSortimentPost(groupId, createSortimentDTO)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getSortimentApi();
final String groupId = groupId_example; // String | 
final CreateSortimentDTO createSortimentDTO = ; // CreateSortimentDTO | 

try {
    final response = api.apiMainSortimentPost(groupId, createSortimentDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SortimentApi->apiMainSortimentPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **createSortimentDTO** | [**CreateSortimentDTO**](CreateSortimentDTO.md)|  | [optional] 

### Return type

[**SortimentDTO**](SortimentDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

