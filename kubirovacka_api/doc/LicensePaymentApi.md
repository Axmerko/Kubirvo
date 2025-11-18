# kubirovacka_api.api.LicensePaymentApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiPaymentLicensePaymentAppStoreNotificationPost**](LicensePaymentApi.md#apipaymentlicensepaymentappstorenotificationpost) | **POST** /api/Payment/LicensePayment/AppStoreNotification | Notifikace o změně stavu předplatného z App Store.
[**apiPaymentLicensePaymentAppStorePost**](LicensePaymentApi.md#apipaymentlicensepaymentappstorepost) | **POST** /api/Payment/LicensePayment/AppStore | Vytvoří App Store platbu
[**apiPaymentLicensePaymentForceCheckPaymentsPost**](LicensePaymentApi.md#apipaymentlicensepaymentforcecheckpaymentspost) | **POST** /api/Payment/LicensePayment/ForceCheckPayments | 
[**apiPaymentLicensePaymentGenerateMissingInvoicesPost**](LicensePaymentApi.md#apipaymentlicensepaymentgeneratemissinginvoicespost) | **POST** /api/Payment/LicensePayment/GenerateMissingInvoices | 
[**apiPaymentLicensePaymentGooglePlayNotificationPost**](LicensePaymentApi.md#apipaymentlicensepaymentgoogleplaynotificationpost) | **POST** /api/Payment/LicensePayment/GooglePlayNotification | Notifikace o změně stavu předplatného z Google Play.
[**apiPaymentLicensePaymentGooglePlayPost**](LicensePaymentApi.md#apipaymentlicensepaymentgoogleplaypost) | **POST** /api/Payment/LicensePayment/GooglePlay | Vytvoří Google Play platbu
[**apiPaymentLicensePaymentPost**](LicensePaymentApi.md#apipaymentlicensepaymentpost) | **POST** /api/Payment/LicensePayment | Vytvoří GoPay platbu
[**apiPaymentLicensePaymentStateGet**](LicensePaymentApi.md#apipaymentlicensepaymentstateget) | **GET** /api/Payment/LicensePayment/State | 
[**apiPaymentLicensePaymentStateNotificationGet**](LicensePaymentApi.md#apipaymentlicensepaymentstatenotificationget) | **GET** /api/Payment/LicensePayment/StateNotification | Slouží pro notifikace od platební brány GoPay.


# **apiPaymentLicensePaymentAppStoreNotificationPost**
> apiPaymentLicensePaymentAppStoreNotificationPost(groupId, appleNotificationDTO)

Notifikace o změně stavu předplatného z App Store.

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicensePaymentApi();
final String groupId = groupId_example; // String | 
final AppleNotificationDTO appleNotificationDTO = ; // AppleNotificationDTO | 

try {
    api.apiPaymentLicensePaymentAppStoreNotificationPost(groupId, appleNotificationDTO);
} catch on DioException (e) {
    print('Exception when calling LicensePaymentApi->apiPaymentLicensePaymentAppStoreNotificationPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **appleNotificationDTO** | [**AppleNotificationDTO**](AppleNotificationDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPaymentLicensePaymentAppStorePost**
> LicensePaymentDTO apiPaymentLicensePaymentAppStorePost(groupId, mobileStoreLicensePaymentDTO)

Vytvoří App Store platbu

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicensePaymentApi();
final String groupId = groupId_example; // String | 
final MobileStoreLicensePaymentDTO mobileStoreLicensePaymentDTO = ; // MobileStoreLicensePaymentDTO | 

try {
    final response = api.apiPaymentLicensePaymentAppStorePost(groupId, mobileStoreLicensePaymentDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicensePaymentApi->apiPaymentLicensePaymentAppStorePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **mobileStoreLicensePaymentDTO** | [**MobileStoreLicensePaymentDTO**](MobileStoreLicensePaymentDTO.md)|  | [optional] 

### Return type

[**LicensePaymentDTO**](LicensePaymentDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPaymentLicensePaymentForceCheckPaymentsPost**
> apiPaymentLicensePaymentForceCheckPaymentsPost(groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicensePaymentApi();
final String groupId = groupId_example; // String | 

try {
    api.apiPaymentLicensePaymentForceCheckPaymentsPost(groupId);
} catch on DioException (e) {
    print('Exception when calling LicensePaymentApi->apiPaymentLicensePaymentForceCheckPaymentsPost: $e\n');
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

# **apiPaymentLicensePaymentGenerateMissingInvoicesPost**
> apiPaymentLicensePaymentGenerateMissingInvoicesPost(groupId, year)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicensePaymentApi();
final String groupId = groupId_example; // String | 
final int year = 56; // int | 

try {
    api.apiPaymentLicensePaymentGenerateMissingInvoicesPost(groupId, year);
} catch on DioException (e) {
    print('Exception when calling LicensePaymentApi->apiPaymentLicensePaymentGenerateMissingInvoicesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **year** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPaymentLicensePaymentGooglePlayNotificationPost**
> apiPaymentLicensePaymentGooglePlayNotificationPost(groupId, googlePlayNotification)

Notifikace o změně stavu předplatného z Google Play.

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicensePaymentApi();
final String groupId = groupId_example; // String | 
final GooglePlayNotification googlePlayNotification = ; // GooglePlayNotification | 

try {
    api.apiPaymentLicensePaymentGooglePlayNotificationPost(groupId, googlePlayNotification);
} catch on DioException (e) {
    print('Exception when calling LicensePaymentApi->apiPaymentLicensePaymentGooglePlayNotificationPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **googlePlayNotification** | [**GooglePlayNotification**](GooglePlayNotification.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPaymentLicensePaymentGooglePlayPost**
> LicensePaymentDTO apiPaymentLicensePaymentGooglePlayPost(groupId, mobileStoreLicensePaymentDTO)

Vytvoří Google Play platbu

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicensePaymentApi();
final String groupId = groupId_example; // String | 
final MobileStoreLicensePaymentDTO mobileStoreLicensePaymentDTO = ; // MobileStoreLicensePaymentDTO | 

try {
    final response = api.apiPaymentLicensePaymentGooglePlayPost(groupId, mobileStoreLicensePaymentDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicensePaymentApi->apiPaymentLicensePaymentGooglePlayPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **mobileStoreLicensePaymentDTO** | [**MobileStoreLicensePaymentDTO**](MobileStoreLicensePaymentDTO.md)|  | [optional] 

### Return type

[**LicensePaymentDTO**](LicensePaymentDTO.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPaymentLicensePaymentPost**
> Payment apiPaymentLicensePaymentPost(groupId, licensePaymentDTO)

Vytvoří GoPay platbu

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicensePaymentApi();
final String groupId = groupId_example; // String | 
final LicensePaymentDTO licensePaymentDTO = ; // LicensePaymentDTO | 

try {
    final response = api.apiPaymentLicensePaymentPost(groupId, licensePaymentDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicensePaymentApi->apiPaymentLicensePaymentPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **licensePaymentDTO** | [**LicensePaymentDTO**](LicensePaymentDTO.md)|  | [optional] 

### Return type

[**Payment**](Payment.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPaymentLicensePaymentStateGet**
> SessionState apiPaymentLicensePaymentStateGet(id, groupId)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicensePaymentApi();
final String id = id_example; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiPaymentLicensePaymentStateGet(id, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicensePaymentApi->apiPaymentLicensePaymentStateGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**SessionState**](SessionState.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiPaymentLicensePaymentStateNotificationGet**
> SessionState apiPaymentLicensePaymentStateNotificationGet(id, groupId)

Slouží pro notifikace od platební brány GoPay.

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getLicensePaymentApi();
final String id = id_example; // String | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiPaymentLicensePaymentStateNotificationGet(id, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LicensePaymentApi->apiPaymentLicensePaymentStateNotificationGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**SessionState**](SessionState.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

