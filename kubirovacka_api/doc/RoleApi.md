# kubirovacka_api.api.RoleApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMainRoleListGet**](RoleApi.md#apimainrolelistget) | **GET** /api/Main/Role/List | Vrací role s jejich permisema
[**apiMainRolePermissionPatch**](RoleApi.md#apimainrolepermissionpatch) | **PATCH** /api/Main/Role/Permission | Vrací role s jejich permisema


# **apiMainRoleListGet**
> BuiltList<RoleDTO> apiMainRoleListGet(groupId)

Vrací role s jejich permisema

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getRoleApi();
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainRoleListGet(groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RoleApi->apiMainRoleListGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;RoleDTO&gt;**](RoleDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainRolePermissionPatch**
> apiMainRolePermissionPatch(roleId, permissionIndex, allowed, groupId)

Vrací role s jejich permisema

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getRoleApi();
final String roleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final int permissionIndex = 56; // int | 
final bool allowed = true; // bool | 
final String groupId = groupId_example; // String | 

try {
    api.apiMainRolePermissionPatch(roleId, permissionIndex, allowed, groupId);
} catch on DioException (e) {
    print('Exception when calling RoleApi->apiMainRolePermissionPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleId** | **String**|  | [optional] 
 **permissionIndex** | **int**|  | [optional] 
 **allowed** | **bool**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

