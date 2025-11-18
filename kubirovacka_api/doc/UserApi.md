# kubirovacka_api.api.UserApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMainUserAddUserToGroupPost**](UserApi.md#apimainuseraddusertogrouppost) | **POST** /api/Main/User/AddUserToGroup | Přidání uživatele do skupiny
[**apiMainUserConfirmedPatch**](UserApi.md#apimainuserconfirmedpatch) | **PATCH** /api/Main/User/Confirmed | Potvrzení emailu uživatele
[**apiMainUserDelete**](UserApi.md#apimainuserdelete) | **DELETE** /api/Main/User | Maže uživatelský účet
[**apiMainUserDetailedUserGet**](UserApi.md#apimainuserdetaileduserget) | **GET** /api/Main/User/DetailedUser | Vrací detailní uživatelský účet
[**apiMainUserFbTokenPatch**](UserApi.md#apimainuserfbtokenpatch) | **PATCH** /api/Main/User/FbToken | Aktualizace Firebase tokenu
[**apiMainUserForgottenPasswordPatch**](UserApi.md#apimainuserforgottenpasswordpatch) | **PATCH** /api/Main/User/ForgottenPassword | Změna hesla po zapomenutí
[**apiMainUserPasswordResetEmailPost**](UserApi.md#apimainuserpasswordresetemailpost) | **POST** /api/Main/User/PasswordResetEmail | Zaslání emailu pro reset hesla
[**apiMainUserPost**](UserApi.md#apimainuserpost) | **POST** /api/Main/User | Registrace
[**apiMainUserProfileGet**](UserApi.md#apimainuserprofileget) | **GET** /api/Main/User/Profile | Vrací profil uživatele
[**apiMainUserProfilePatch**](UserApi.md#apimainuserprofilepatch) | **PATCH** /api/Main/User/Profile | Editace profilu uživatele
[**apiMainUserSuperConfirmedPatch**](UserApi.md#apimainusersuperconfirmedpatch) | **PATCH** /api/Main/User/SuperConfirmed | Potvrzuje a odpotvrzuje uživatelský účet
[**apiMainUserSuperLocalePatch**](UserApi.md#apimainusersuperlocalepatch) | **PATCH** /api/Main/User/SuperLocale | Mění jazyk uživatele
[**apiMainUserUsersWithEmailGet**](UserApi.md#apimainuseruserswithemailget) | **GET** /api/Main/User/UsersWithEmail | Vrací pole emailů obsahujících hledanou frázi


# **apiMainUserAddUserToGroupPost**
> UserAddFormDTO apiMainUserAddUserToGroupPost(roleId, email, firstName, lastName, password, locale, groupId, firebaseToken)

Přidání uživatele do skupiny

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getUserApi();
final String roleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String email = email_example; // String | 
final String firstName = firstName_example; // String | 
final String lastName = lastName_example; // String | 
final String password = password_example; // String | 
final String locale = locale_example; // String | 
final String groupId = groupId_example; // String | 
final String firebaseToken = firebaseToken_example; // String | 

try {
    final response = api.apiMainUserAddUserToGroupPost(roleId, email, firstName, lastName, password, locale, groupId, firebaseToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiMainUserAddUserToGroupPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleId** | **String**|  | 
 **email** | **String**|  | 
 **firstName** | **String**|  | 
 **lastName** | **String**|  | 
 **password** | **String**|  | 
 **locale** | **String**|  | 
 **groupId** | **String**|  | [optional] 
 **firebaseToken** | **String**|  | [optional] 

### Return type

[**UserAddFormDTO**](UserAddFormDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainUserConfirmedPatch**
> apiMainUserConfirmedPatch(confirmHash, groupId)

Potvrzení emailu uživatele

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getUserApi();
final String confirmHash = confirmHash_example; // String | Potvrzovací token
final String groupId = groupId_example; // String | 

try {
    api.apiMainUserConfirmedPatch(confirmHash, groupId);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiMainUserConfirmedPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **confirmHash** | **String**| Potvrzovací token | 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainUserDelete**
> apiMainUserDelete(id, groupId)

Maže uživatelský účet

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getUserApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | GUID uživatele
final String groupId = groupId_example; // String | 

try {
    api.apiMainUserDelete(id, groupId);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiMainUserDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| GUID uživatele | 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainUserDetailedUserGet**
> User apiMainUserDetailedUserGet(email, groupId)

Vrací detailní uživatelský účet

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getUserApi();
final String email = email_example; // String | Email
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainUserDetailedUserGet(email, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiMainUserDetailedUserGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Email | 
 **groupId** | **String**|  | [optional] 

### Return type

[**User**](User.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainUserFbTokenPatch**
> apiMainUserFbTokenPatch(fbToken, groupId)

Aktualizace Firebase tokenu

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getUserApi();
final String fbToken = fbToken_example; // String | Firebase token
final String groupId = groupId_example; // String | 

try {
    api.apiMainUserFbTokenPatch(fbToken, groupId);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiMainUserFbTokenPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fbToken** | **String**| Firebase token | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainUserForgottenPasswordPatch**
> apiMainUserForgottenPasswordPatch(hash, password, groupId)

Změna hesla po zapomenutí

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getUserApi();
final String hash = hash_example; // String | Hash pro obnovu hesla
final String password = password_example; // String | 
final String groupId = groupId_example; // String | 

try {
    api.apiMainUserForgottenPasswordPatch(hash, password, groupId);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiMainUserForgottenPasswordPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| Hash pro obnovu hesla | 
 **password** | **String**|  | 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainUserPasswordResetEmailPost**
> apiMainUserPasswordResetEmailPost(email, groupId)

Zaslání emailu pro reset hesla

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getUserApi();
final String email = email_example; // String | 
final String groupId = groupId_example; // String | 

try {
    api.apiMainUserPasswordResetEmailPost(email, groupId);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiMainUserPasswordResetEmailPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainUserPost**
> UserRegisterDTO apiMainUserPost(email, firstName, lastName, password, locale, groupId, firebaseToken)

Registrace

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getUserApi();
final String email = email_example; // String | 
final String firstName = firstName_example; // String | 
final String lastName = lastName_example; // String | 
final String password = password_example; // String | 
final String locale = locale_example; // String | 
final String groupId = groupId_example; // String | 
final String firebaseToken = firebaseToken_example; // String | 

try {
    final response = api.apiMainUserPost(email, firstName, lastName, password, locale, groupId, firebaseToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiMainUserPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 
 **firstName** | **String**|  | 
 **lastName** | **String**|  | 
 **password** | **String**|  | 
 **locale** | **String**|  | 
 **groupId** | **String**|  | [optional] 
 **firebaseToken** | **String**|  | [optional] 

### Return type

[**UserRegisterDTO**](UserRegisterDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainUserProfileGet**
> UserProfileDTO apiMainUserProfileGet(id, groupId)

Vrací profil uživatele

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getUserApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainUserProfileGet(id, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiMainUserProfileGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**UserProfileDTO**](UserProfileDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainUserProfilePatch**
> UserProfileDTO apiMainUserProfilePatch(id, groupId, email, firstName, lastName, password, roleId)

Editace profilu uživatele

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getUserApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 
final String email = email_example; // String | 
final String firstName = firstName_example; // String | 
final String lastName = lastName_example; // String | 
final String password = password_example; // String | 
final String roleId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiMainUserProfilePatch(id, groupId, email, firstName, lastName, password, roleId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiMainUserProfilePatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **groupId** | **String**|  | [optional] 
 **email** | **String**|  | [optional] 
 **firstName** | **String**|  | [optional] 
 **lastName** | **String**|  | [optional] 
 **password** | **String**|  | [optional] 
 **roleId** | **String**|  | [optional] 

### Return type

[**UserProfileDTO**](UserProfileDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainUserSuperConfirmedPatch**
> apiMainUserSuperConfirmedPatch(id, confirmed, groupId)

Potvrzuje a odpotvrzuje uživatelský účet

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getUserApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Uživatelské GUID
final bool confirmed = true; // bool | Účet potvrzen
final String groupId = groupId_example; // String | 

try {
    api.apiMainUserSuperConfirmedPatch(id, confirmed, groupId);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiMainUserSuperConfirmedPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Uživatelské GUID | 
 **confirmed** | **bool**| Účet potvrzen | 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainUserSuperLocalePatch**
> apiMainUserSuperLocalePatch(id, locale, groupId)

Mění jazyk uživatele

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getUserApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Uživatelské GUID
final String locale = locale_example; // String | Jazyk
final String groupId = groupId_example; // String | 

try {
    api.apiMainUserSuperLocalePatch(id, locale, groupId);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiMainUserSuperLocalePatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Uživatelské GUID | 
 **locale** | **String**| Jazyk | 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiMainUserUsersWithEmailGet**
> BuiltList<String> apiMainUserUsersWithEmailGet(email, groupId)

Vrací pole emailů obsahujících hledanou frázi

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getUserApi();
final String email = email_example; // String | Email
final String groupId = groupId_example; // String | 

try {
    final response = api.apiMainUserUsersWithEmailGet(email, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->apiMainUserUsersWithEmailGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Email | 
 **groupId** | **String**|  | [optional] 

### Return type

**BuiltList&lt;String&gt;**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

