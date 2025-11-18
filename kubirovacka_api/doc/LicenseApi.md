# kubirovacka_api.api.LicenseApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMainLicenseDelete**](LicenseApi.md#apimainlicensedelete) | **DELETE** /api/Main/License | Smazání license
[**apiMainLicenseGet**](LicenseApi.md#apimainlicenseget) | **GET** /api/Main/License | Vrací licenci, kterou uživatel momentálně používá
[**apiMainLicenseIdGet**](LicenseApi.md#apimainlicenseidget) | **GET** /api/Main/License/{id} | 
[**apiMainLicenseLicensesOfGroupGet**](LicenseApi.md#apimainlicenselicensesofgroupget) | **GET** /api/Main/License/LicensesOfGroup | Vrátí licence dané skupiny
[**apiMainLicensePatch**](LicenseApi.md#apimainlicensepatch) | **PATCH** /api/Main/License | 
[**apiMainLicensePost**](LicenseApi.md#apimainlicensepost) | **POST** /api/Main/License | Vytvoří novou licenci
[**apiMainLicensePricingGet**](LicenseApi.md#apimainlicensepricingget) | **GET** /api/Main/License/Pricing | Vrátí ceny licencí
[**apiMainLicenseSuperExpirationPatch**](LicenseApi.md#apimainlicensesuperexpirationpatch) | **PATCH** /api/Main/License/SuperExpiration | Prodlužuje uživateli licenci
[**apiMainLicenseSuperGiveAllPremiumPatch**](LicenseApi.md#apimainlicensesupergiveallpremiumpatch) | **PATCH** /api/Main/License/SuperGiveAllPremium | 
[**apiMainLicenseUnassignPatch**](LicenseApi.md#apimainlicenseunassignpatch) | **PATCH** /api/Main/License/Unassign | Odebrání license


# **apiMainLicenseDelete**
> apiMainLicenseDelete(groupId, licenseId)

Smazání license

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicenseApi();
final String groupId = groupId_example; // String | 
final String licenseId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.apiMainLicenseDelete(groupId, licenseId);
} catch on DioException (e) {
    print('Exception when calling LicenseApi->apiMainLicenseDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **licenseId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLicenseGet**
> LicenseDTO apiMainLicenseGet(groupId)

Vrací licenci, kterou uživatel momentálně používá

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicenseApi();
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainLicenseGet(groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicenseApi->apiMainLicenseGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 

### Return type

[**LicenseDTO**](LicenseDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLicenseIdGet**
> LicenseDTO apiMainLicenseIdGet(id, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicenseApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainLicenseIdGet(id, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicenseApi->apiMainLicenseIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **groupId** | **String**|  | [optional] 

### Return type

[**LicenseDTO**](LicenseDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLicenseLicensesOfGroupGet**
> LicenseDTOGridDTO apiMainLicenseLicensesOfGroupGet(sort, order, limit, page, filterQueryPeriodSearch, filterQueryPeriodRules, groupId)

Vrátí licence dané skupiny

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicenseApi();
final String sort = sort_example; // String | 
final String order = order_example; // String | 
final int limit = 56; // int | 
final int page = 56; // int | 
final String filterQueryPeriodSearch = filterQueryPeriodSearch_example; // String | 
final BuiltList<GridFilterRule> filterQueryPeriodRules = ; // BuiltList<GridFilterRule> | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainLicenseLicensesOfGroupGet(sort, order, limit, page, filterQueryPeriodSearch, filterQueryPeriodRules, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicenseApi->apiMainLicenseLicensesOfGroupGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sort** | **String**|  | [optional] 
 **order** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 
 **filterQueryPeriodSearch** | **String**|  | [optional] 
 **filterQueryPeriodRules** | [**BuiltList&lt;GridFilterRule&gt;**](GridFilterRule.md)|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**LicenseDTOGridDTO**](LicenseDTOGridDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLicensePatch**
> LicenseDTO apiMainLicensePatch(groupId, licenseDTO)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicenseApi();
final String groupId = groupId_example; // String | 
final LicenseDTO licenseDTO = ; // LicenseDTO | 

try {
    final response = api.apiMainLicensePatch(groupId, licenseDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicenseApi->apiMainLicensePatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **licenseDTO** | [**LicenseDTO**](LicenseDTO.md)|  | [optional] 

### Return type

[**LicenseDTO**](LicenseDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLicensePost**
> LicenseDTO apiMainLicensePost(groupId, licenseDTO)

Vytvoří novou licenci

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicenseApi();
final String groupId = groupId_example; // String | 
final LicenseDTO licenseDTO = ; // LicenseDTO | Objekt licence k vytvoření

try {
    final response = api.apiMainLicensePost(groupId, licenseDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicenseApi->apiMainLicensePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **licenseDTO** | [**LicenseDTO**](LicenseDTO.md)| Objekt licence k vytvoření | [optional] 

### Return type

[**LicenseDTO**](LicenseDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLicensePricingGet**
> PricingOptions apiMainLicensePricingGet(groupId)

Vrátí ceny licencí

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicenseApi();
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainLicensePricingGet(groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicenseApi->apiMainLicensePricingGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 

### Return type

[**PricingOptions**](PricingOptions.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLicenseSuperExpirationPatch**
> apiMainLicenseSuperExpirationPatch(id, expirationDate, groupId)

Prodlužuje uživateli licenci

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicenseApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Licence GUID
final DateTime expirationDate = 2013-10-20T19:20:30+01:00; // DateTime | Datum expirace
final String groupId = groupId_example; // String | 

try {
    api.apiMainLicenseSuperExpirationPatch(id, expirationDate, groupId);
} catch on DioException (e) {
    print('Exception when calling LicenseApi->apiMainLicenseSuperExpirationPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Licence GUID | 
 **expirationDate** | **DateTime**| Datum expirace | 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLicenseSuperGiveAllPremiumPatch**
> apiMainLicenseSuperGiveAllPremiumPatch(groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicenseApi();
final String groupId = groupId_example; // String | 

try {
    api.apiMainLicenseSuperGiveAllPremiumPatch(groupId);
} catch on DioException (e) {
    print('Exception when calling LicenseApi->apiMainLicenseSuperGiveAllPremiumPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainLicenseUnassignPatch**
> apiMainLicenseUnassignPatch(groupId, userId)

Odebrání license

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicenseApi();
final String groupId = groupId_example; // String | 
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.apiMainLicenseUnassignPatch(groupId, userId);
} catch on DioException (e) {
    print('Exception when calling LicenseApi->apiMainLicenseUnassignPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **userId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

