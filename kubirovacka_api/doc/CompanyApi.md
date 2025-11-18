# kubirovacka_api.api.CompanyApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiReportCompanyCompaniesGet**](CompanyApi.md#apireportcompanycompaniesget) | **GET** /api/Report/Company/Companies | 
[**apiReportCompanyCompaniesIdGet**](CompanyApi.md#apireportcompanycompaniesidget) | **GET** /api/Report/Company/companies/{id} | 
[**apiReportCompanyDelete**](CompanyApi.md#apireportcompanydelete) | **DELETE** /api/Report/Company | 
[**apiReportCompanyPost**](CompanyApi.md#apireportcompanypost) | **POST** /api/Report/Company | Vytvoří firmu
[**apiReportCompanyPut**](CompanyApi.md#apireportcompanyput) | **PUT** /api/Report/Company | Aktualizuje firmu


# **apiReportCompanyCompaniesGet**
> BuiltList<CompanyDTO> apiReportCompanyCompaniesGet(filter, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getCompanyApi();
final String filter = filter_example; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiReportCompanyCompaniesGet(filter, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CompanyApi->apiReportCompanyCompaniesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;CompanyDTO&gt;**](CompanyDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiReportCompanyCompaniesIdGet**
> CompanyDTO apiReportCompanyCompaniesIdGet(id, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getCompanyApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiReportCompanyCompaniesIdGet(id, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CompanyApi->apiReportCompanyCompaniesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **groupId** | **String**|  | [optional] 

### Return type

[**CompanyDTO**](CompanyDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiReportCompanyDelete**
> apiReportCompanyDelete(subjectId, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getCompanyApi();
final String subjectId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    api.apiReportCompanyDelete(subjectId, groupId);
} catch on DioException (e) {
    print('Exception when calling CompanyApi->apiReportCompanyDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subjectId** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiReportCompanyPost**
> CompanyDTO apiReportCompanyPost(groupId, companyDTO)

Vytvoří firmu

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getCompanyApi();
final String groupId = groupId_example; // String | 
final CompanyDTO companyDTO = ; // CompanyDTO | 

try {
    final response = api.apiReportCompanyPost(groupId, companyDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CompanyApi->apiReportCompanyPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **companyDTO** | [**CompanyDTO**](CompanyDTO.md)|  | [optional] 

### Return type

[**CompanyDTO**](CompanyDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiReportCompanyPut**
> CompanyDTO apiReportCompanyPut(groupId, companyDTO)

Aktualizuje firmu

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getCompanyApi();
final String groupId = groupId_example; // String | 
final CompanyDTO companyDTO = ; // CompanyDTO | 

try {
    final response = api.apiReportCompanyPut(groupId, companyDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CompanyApi->apiReportCompanyPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **companyDTO** | [**CompanyDTO**](CompanyDTO.md)|  | [optional] 

### Return type

[**CompanyDTO**](CompanyDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

