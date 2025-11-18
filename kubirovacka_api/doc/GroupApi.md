# kubirovacka_api.api.GroupApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMainGroupAdCreditGet**](GroupApi.md#apimaingroupadcreditget) | **GET** /api/Main/Group/AdCredit | Vrátí kredity na reklamy
[**apiMainGroupAdvertiserPatch**](GroupApi.md#apimaingroupadvertiserpatch) | **PATCH** /api/Main/Group/Advertiser | Zapne inzerci pro skupinu
[**apiMainGroupGet**](GroupApi.md#apimaingroupget) | **GET** /api/Main/Group | Vrací skupiny uživatele
[**apiMainGroupMembersGet**](GroupApi.md#apimaingroupmembersget) | **GET** /api/Main/Group/Members | Vrátí uživatele dané skupiny
[**apiMainGroupMembersGridGet**](GroupApi.md#apimaingroupmembersgridget) | **GET** /api/Main/Group/MembersGrid | Vrátí uživatele dané skupiny
[**apiMainGroupUserStatusPatch**](GroupApi.md#apimaingroupuserstatuspatch) | **PATCH** /api/Main/Group/UserStatus | Nastaví status uživatele ve skupině


# **apiMainGroupAdCreditGet**
> int apiMainGroupAdCreditGet(groupId)

Vrátí kredity na reklamy

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getGroupApi();
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainGroupAdCreditGet(groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GroupApi->apiMainGroupAdCreditGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 

### Return type

**int**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainGroupAdvertiserPatch**
> apiMainGroupAdvertiserPatch(groupId)

Zapne inzerci pro skupinu

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getGroupApi();
final String groupId = groupId_example; // String | 

try {
    api.apiMainGroupAdvertiserPatch(groupId);
} catch on DioException (e) {
    print('Exception when calling GroupApi->apiMainGroupAdvertiserPatch: $e\n');
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

# **apiMainGroupGet**
> BuiltList<GroupDTO> apiMainGroupGet(groupId)

Vrací skupiny uživatele

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getGroupApi();
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainGroupGet(groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GroupApi->apiMainGroupGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;GroupDTO&gt;**](GroupDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainGroupMembersGet**
> BuiltList<UserProfileDTO> apiMainGroupMembersGet(groupId)

Vrátí uživatele dané skupiny

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getGroupApi();
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainGroupMembersGet(groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GroupApi->apiMainGroupMembersGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;UserProfileDTO&gt;**](UserProfileDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainGroupMembersGridGet**
> UserProfileDTOGridDTO apiMainGroupMembersGridGet(sort, order, limit, page, filterQueryPeriodSearch, filterQueryPeriodRules, groupId)

Vrátí uživatele dané skupiny

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getGroupApi();
final String sort = sort_example; // String | 
final String order = order_example; // String | 
final int limit = 56; // int | 
final int page = 56; // int | 
final String filterQueryPeriodSearch = filterQueryPeriodSearch_example; // String | 
final BuiltList<GridFilterRule> filterQueryPeriodRules = ; // BuiltList<GridFilterRule> | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainGroupMembersGridGet(sort, order, limit, page, filterQueryPeriodSearch, filterQueryPeriodRules, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling GroupApi->apiMainGroupMembersGridGet: $e\n');
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

[**UserProfileDTOGridDTO**](UserProfileDTOGridDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainGroupUserStatusPatch**
> apiMainGroupUserStatusPatch(id, status, groupId)

Nastaví status uživatele ve skupině

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getGroupApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id uživatele
final UserGroupStatus status = ; // UserGroupStatus | Status
final String groupId = groupId_example; // String | 

try {
    api.apiMainGroupUserStatusPatch(id, status, groupId);
} catch on DioException (e) {
    print('Exception when calling GroupApi->apiMainGroupUserStatusPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Id uživatele | [optional] 
 **status** | [**UserGroupStatus**](.md)| Status | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

