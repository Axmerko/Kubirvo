# kubirovacka_api.api.AdvertisementApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiAdvertisingAdvertisementClickPost**](AdvertisementApi.md#apiadvertisingadvertisementclickpost) | **POST** /api/Advertising/Advertisement/Click | 
[**apiAdvertisingAdvertisementClicksStatsGet**](AdvertisementApi.md#apiadvertisingadvertisementclicksstatsget) | **GET** /api/Advertising/Advertisement/ClicksStats | 
[**apiAdvertisingAdvertisementCreditPatch**](AdvertisementApi.md#apiadvertisingadvertisementcreditpatch) | **PATCH** /api/Advertising/Advertisement/Credit | Přiřadí kredit reklamě
[**apiAdvertisingAdvertisementDelete**](AdvertisementApi.md#apiadvertisingadvertisementdelete) | **DELETE** /api/Advertising/Advertisement | Smaže reklamu
[**apiAdvertisingAdvertisementEnabledPatch**](AdvertisementApi.md#apiadvertisingadvertisementenabledpatch) | **PATCH** /api/Advertising/Advertisement/Enabled | Aktivuje/deaktivuje reklamu
[**apiAdvertisingAdvertisementGet**](AdvertisementApi.md#apiadvertisingadvertisementget) | **GET** /api/Advertising/Advertisement | Vrátí reklamu
[**apiAdvertisingAdvertisementInactiveInfoMessagesGet**](AdvertisementApi.md#apiadvertisingadvertisementinactiveinfomessagesget) | **GET** /api/Advertising/Advertisement/InactiveInfoMessages | 
[**apiAdvertisingAdvertisementInfoMessageDelete**](AdvertisementApi.md#apiadvertisingadvertisementinfomessagedelete) | **DELETE** /api/Advertising/Advertisement/InfoMessage | 
[**apiAdvertisingAdvertisementInfoMessagePost**](AdvertisementApi.md#apiadvertisingadvertisementinfomessagepost) | **POST** /api/Advertising/Advertisement/InfoMessage | 
[**apiAdvertisingAdvertisementInfoMessagesGet**](AdvertisementApi.md#apiadvertisingadvertisementinfomessagesget) | **GET** /api/Advertising/Advertisement/InfoMessages | 
[**apiAdvertisingAdvertisementLimitCostPerDayPatch**](AdvertisementApi.md#apiadvertisingadvertisementlimitcostperdaypatch) | **PATCH** /api/Advertising/Advertisement/LimitCostPerDay | 
[**apiAdvertisingAdvertisementLoadGet**](AdvertisementApi.md#apiadvertisingadvertisementloadget) | **GET** /api/Advertising/Advertisement/Load | Načte reklamu pro zobrazení
[**apiAdvertisingAdvertisementMaxCostPerDayPatch**](AdvertisementApi.md#apiadvertisingadvertisementmaxcostperdaypatch) | **PATCH** /api/Advertising/Advertisement/MaxCostPerDay | 
[**apiAdvertisingAdvertisementNamePatch**](AdvertisementApi.md#apiadvertisingadvertisementnamepatch) | **PATCH** /api/Advertising/Advertisement/Name | 
[**apiAdvertisingAdvertisementOwnedGet**](AdvertisementApi.md#apiadvertisingadvertisementownedget) | **GET** /api/Advertising/Advertisement/Owned | Vrátí reklamy
[**apiAdvertisingAdvertisementPost**](AdvertisementApi.md#apiadvertisingadvertisementpost) | **POST** /api/Advertising/Advertisement | Vytvoří reklamu
[**apiAdvertisingAdvertisementSpendingStatsGet**](AdvertisementApi.md#apiadvertisingadvertisementspendingstatsget) | **GET** /api/Advertising/Advertisement/SpendingStats | 
[**apiAdvertisingAdvertisementUrlPatch**](AdvertisementApi.md#apiadvertisingadvertisementurlpatch) | **PATCH** /api/Advertising/Advertisement/Url | 
[**apiAdvertisingAdvertisementViewPost**](AdvertisementApi.md#apiadvertisingadvertisementviewpost) | **POST** /api/Advertising/Advertisement/View | 
[**apiAdvertisingAdvertisementViewsStatsGet**](AdvertisementApi.md#apiadvertisingadvertisementviewsstatsget) | **GET** /api/Advertising/Advertisement/ViewsStats | 


# **apiAdvertisingAdvertisementClickPost**
> apiAdvertisingAdvertisementClickPost(groupId, adId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final String groupId = groupId_example; // String | 
final String adId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.apiAdvertisingAdvertisementClickPost(groupId, adId);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementClickPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **adId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementClicksStatsGet**
> AdStatDTO apiAdvertisingAdvertisementClicksStatsGet(from, to, adId, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final DateTime from = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime to = 2013-10-20T19:20:30+01:00; // DateTime | 
final String adId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiAdvertisingAdvertisementClicksStatsGet(from, to, adId, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementClicksStatsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **DateTime**|  | [optional] 
 **to** | **DateTime**|  | [optional] 
 **adId** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**AdStatDTO**](AdStatDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementCreditPatch**
> apiAdvertisingAdvertisementCreditPatch(adId, adCredit, groupId)

Přiřadí kredit reklamě

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final String adId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id reklamy
final int adCredit = 56; // int | Částka reklamy
final String groupId = groupId_example; // String | 

try {
    api.apiAdvertisingAdvertisementCreditPatch(adId, adCredit, groupId);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementCreditPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adId** | **String**| Id reklamy | [optional] 
 **adCredit** | **int**| Částka reklamy | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementDelete**
> apiAdvertisingAdvertisementDelete(id, groupId)

Smaže reklamu

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id reklamy
final String groupId = groupId_example; // String | 

try {
    api.apiAdvertisingAdvertisementDelete(id, groupId);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Id reklamy | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementEnabledPatch**
> apiAdvertisingAdvertisementEnabledPatch(adId, enabled, groupId)

Aktivuje/deaktivuje reklamu

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final String adId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id reklamy
final bool enabled = true; // bool | Aktivováno
final String groupId = groupId_example; // String | 

try {
    api.apiAdvertisingAdvertisementEnabledPatch(adId, enabled, groupId);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementEnabledPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adId** | **String**| Id reklamy | [optional] 
 **enabled** | **bool**| Aktivováno | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementGet**
> AdDTO apiAdvertisingAdvertisementGet(adId, groupId)

Vrátí reklamu

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final String adId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id reklamy
final String groupId = groupId_example; // String | 

try {
    final response = api.apiAdvertisingAdvertisementGet(adId, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adId** | **String**| Id reklamy | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**AdDTO**](AdDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementInactiveInfoMessagesGet**
> BuiltList<InfoMessageDTO> apiAdvertisingAdvertisementInactiveInfoMessagesGet(groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final String groupId = groupId_example; // String | 

try {
    final response = api.apiAdvertisingAdvertisementInactiveInfoMessagesGet(groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementInactiveInfoMessagesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;InfoMessageDTO&gt;**](InfoMessageDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementInfoMessageDelete**
> apiAdvertisingAdvertisementInfoMessageDelete(id, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final int id = 56; // int | 
final String groupId = groupId_example; // String | 

try {
    api.apiAdvertisingAdvertisementInfoMessageDelete(id, groupId);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementInfoMessageDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementInfoMessagePost**
> apiAdvertisingAdvertisementInfoMessagePost(groupId, infoMessageDTO)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final String groupId = groupId_example; // String | 
final InfoMessageDTO infoMessageDTO = ; // InfoMessageDTO | 

try {
    api.apiAdvertisingAdvertisementInfoMessagePost(groupId, infoMessageDTO);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementInfoMessagePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **infoMessageDTO** | [**InfoMessageDTO**](InfoMessageDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementInfoMessagesGet**
> BuiltList<InfoMessageDTO> apiAdvertisingAdvertisementInfoMessagesGet(groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final String groupId = groupId_example; // String | 

try {
    final response = api.apiAdvertisingAdvertisementInfoMessagesGet(groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementInfoMessagesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;InfoMessageDTO&gt;**](InfoMessageDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementLimitCostPerDayPatch**
> apiAdvertisingAdvertisementLimitCostPerDayPatch(adId, limit, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final String adId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final bool limit = true; // bool | 
final String groupId = groupId_example; // String | 

try {
    api.apiAdvertisingAdvertisementLimitCostPerDayPatch(adId, limit, groupId);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementLimitCostPerDayPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adId** | **String**|  | [optional] 
 **limit** | **bool**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementLoadGet**
> AdToDisplayDTO apiAdvertisingAdvertisementLoadGet(type, groupId)

Načte reklamu pro zobrazení

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final AdType type = ; // AdType | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiAdvertisingAdvertisementLoadGet(type, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementLoadGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**AdType**](.md)|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**AdToDisplayDTO**](AdToDisplayDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementMaxCostPerDayPatch**
> apiAdvertisingAdvertisementMaxCostPerDayPatch(adId, costPerDay, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final String adId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final int costPerDay = 56; // int | 
final String groupId = groupId_example; // String | 

try {
    api.apiAdvertisingAdvertisementMaxCostPerDayPatch(adId, costPerDay, groupId);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementMaxCostPerDayPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adId** | **String**|  | [optional] 
 **costPerDay** | **int**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementNamePatch**
> apiAdvertisingAdvertisementNamePatch(adId, name, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final String adId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String name = name_example; // String | 
final String groupId = groupId_example; // String | 

try {
    api.apiAdvertisingAdvertisementNamePatch(adId, name, groupId);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementNamePatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adId** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementOwnedGet**
> BuiltList<AdDTO> apiAdvertisingAdvertisementOwnedGet(groupId)

Vrátí reklamy

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final String groupId = groupId_example; // String | 

try {
    final response = api.apiAdvertisingAdvertisementOwnedGet(groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementOwnedGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;AdDTO&gt;**](AdDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementPost**
> AdDTO apiAdvertisingAdvertisementPost(name, limitCostPerDay, groupId, adType, maxCostPerDay, showFrom, adContentType, imageId, destinationUrl, html, adId, createdAt, approved, enabled, credits)

Vytvoří reklamu

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final String name = name_example; // String | 
final bool limitCostPerDay = true; // bool | 
final String groupId = groupId_example; // String | 
final AdType adType = ; // AdType | 
final int maxCostPerDay = 56; // int | 
final DateTime showFrom = 2013-10-20T19:20:30+01:00; // DateTime | 
final AdContentType adContentType = ; // AdContentType | 
final String imageId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String destinationUrl = destinationUrl_example; // String | 
final String html = html_example; // String | 
final String adId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final DateTime createdAt = 2013-10-20T19:20:30+01:00; // DateTime | 
final bool approved = true; // bool | 
final bool enabled = true; // bool | 
final int credits = 56; // int | 

try {
    final response = api.apiAdvertisingAdvertisementPost(name, limitCostPerDay, groupId, adType, maxCostPerDay, showFrom, adContentType, imageId, destinationUrl, html, adId, createdAt, approved, enabled, credits);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **limitCostPerDay** | **bool**|  | 
 **groupId** | **String**|  | [optional] 
 **adType** | [**AdType**](AdType.md)|  | [optional] 
 **maxCostPerDay** | **int**|  | [optional] 
 **showFrom** | **DateTime**|  | [optional] 
 **adContentType** | [**AdContentType**](AdContentType.md)|  | [optional] 
 **imageId** | **String**|  | [optional] 
 **destinationUrl** | **String**|  | [optional] 
 **html** | **String**|  | [optional] 
 **adId** | **String**|  | [optional] 
 **createdAt** | **DateTime**|  | [optional] 
 **approved** | **bool**|  | [optional] 
 **enabled** | **bool**|  | [optional] 
 **credits** | **int**|  | [optional] 

### Return type

[**AdDTO**](AdDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementSpendingStatsGet**
> AdStatDTO apiAdvertisingAdvertisementSpendingStatsGet(from, to, adId, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final DateTime from = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime to = 2013-10-20T19:20:30+01:00; // DateTime | 
final String adId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiAdvertisingAdvertisementSpendingStatsGet(from, to, adId, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementSpendingStatsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **DateTime**|  | [optional] 
 **to** | **DateTime**|  | [optional] 
 **adId** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**AdStatDTO**](AdStatDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementUrlPatch**
> apiAdvertisingAdvertisementUrlPatch(adId, url, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final String adId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String url = url_example; // String | 
final String groupId = groupId_example; // String | 

try {
    api.apiAdvertisingAdvertisementUrlPatch(adId, url, groupId);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementUrlPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adId** | **String**|  | [optional] 
 **url** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementViewPost**
> apiAdvertisingAdvertisementViewPost(groupId, adId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final String groupId = groupId_example; // String | 
final String adId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.apiAdvertisingAdvertisementViewPost(groupId, adId);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementViewPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **adId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiAdvertisingAdvertisementViewsStatsGet**
> AdStatDTO apiAdvertisingAdvertisementViewsStatsGet(from, to, adId, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getAdvertisementApi();
final DateTime from = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime to = 2013-10-20T19:20:30+01:00; // DateTime | 
final String adId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiAdvertisingAdvertisementViewsStatsGet(from, to, adId, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdvertisementApi->apiAdvertisingAdvertisementViewsStatsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from** | **DateTime**|  | [optional] 
 **to** | **DateTime**|  | [optional] 
 **adId** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**AdStatDTO**](AdStatDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

