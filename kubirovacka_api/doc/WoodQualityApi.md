# kubirovacka_api.api.WoodQualityApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMainWoodQualityDeleteDelete**](WoodQualityApi.md#apimainwoodqualitydeletedelete) | **DELETE** /api/Main/WoodQuality/Delete | 
[**apiMainWoodQualityFormPost**](WoodQualityApi.md#apimainwoodqualityformpost) | **POST** /api/Main/WoodQuality/Form | 
[**apiMainWoodQualityGet**](WoodQualityApi.md#apimainwoodqualityget) | **GET** /api/Main/WoodQuality | 
[**apiMainWoodQualityGridPost**](WoodQualityApi.md#apimainwoodqualitygridpost) | **POST** /api/Main/WoodQuality/Grid | 
[**apiMainWoodQualityListGet**](WoodQualityApi.md#apimainwoodqualitylistget) | **GET** /api/Main/WoodQuality/List | 


# **apiMainWoodQualityDeleteDelete**
> apiMainWoodQualityDeleteDelete(id, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getWoodQualityApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    api.apiMainWoodQualityDeleteDelete(id, groupId);
} catch on DioException (e) {
    print('Exception when calling WoodQualityApi->apiMainWoodQualityDeleteDelete: $e\n');
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainWoodQualityFormPost**
> WoodQualityDTO apiMainWoodQualityFormPost(groupId, woodQualityDTO)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getWoodQualityApi();
final String groupId = groupId_example; // String | 
final WoodQualityDTO woodQualityDTO = ; // WoodQualityDTO | 

try {
    final response = api.apiMainWoodQualityFormPost(groupId, woodQualityDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WoodQualityApi->apiMainWoodQualityFormPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **woodQualityDTO** | [**WoodQualityDTO**](WoodQualityDTO.md)|  | [optional] 

### Return type

[**WoodQualityDTO**](WoodQualityDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainWoodQualityGet**
> WoodQualityDTO apiMainWoodQualityGet(quality, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getWoodQualityApi();
final int quality = 56; // int | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainWoodQualityGet(quality, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WoodQualityApi->apiMainWoodQualityGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **quality** | **int**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**WoodQualityDTO**](WoodQualityDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainWoodQualityGridPost**
> WoodQualityDTOGridDTO apiMainWoodQualityGridPost(groupId, gridQueryDTO)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getWoodQualityApi();
final String groupId = groupId_example; // String | 
final GridQueryDTO gridQueryDTO = ; // GridQueryDTO | 

try {
    final response = api.apiMainWoodQualityGridPost(groupId, gridQueryDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WoodQualityApi->apiMainWoodQualityGridPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **gridQueryDTO** | [**GridQueryDTO**](GridQueryDTO.md)|  | [optional] 

### Return type

[**WoodQualityDTOGridDTO**](WoodQualityDTOGridDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainWoodQualityListGet**
> BuiltList<WoodQualityDTO> apiMainWoodQualityListGet(groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getWoodQualityApi();
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainWoodQualityListGet(groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WoodQualityApi->apiMainWoodQualityListGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;WoodQualityDTO&gt;**](WoodQualityDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

