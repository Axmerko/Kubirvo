# kubirovacka_api.api.ReportApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiReportReportDeliveryNotePost**](ReportApi.md#apireportreportdeliverynotepost) | **POST** /api/Report/Report/DeliveryNote | 
[**apiReportReportOverviewSharedXLSXPost**](ReportApi.md#apireportreportoverviewsharedxlsxpost) | **POST** /api/Report/Report/OverviewSharedXLSX | Generuje XLSX přehled sdíleného seznamu
[**apiReportReportOverviewXLSXPost**](ReportApi.md#apireportreportoverviewxlsxpost) | **POST** /api/Report/Report/OverviewXLSX | Generuje XLSX přehled seznamu
[**apiReportReportProofOfOriginPost**](ReportApi.md#apireportreportproofoforiginpost) | **POST** /api/Report/Report/ProofOfOrigin | 


# **apiReportReportDeliveryNotePost**
> Uint8List apiReportReportDeliveryNotePost(groupId, deliveryNoteDTO)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getReportApi();
final String groupId = groupId_example; // String | 
final DeliveryNoteDTO deliveryNoteDTO = ; // DeliveryNoteDTO | 

try {
    final response = api.apiReportReportDeliveryNotePost(groupId, deliveryNoteDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportApi->apiReportReportDeliveryNotePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **deliveryNoteDTO** | [**DeliveryNoteDTO**](DeliveryNoteDTO.md)|  | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/pdf

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiReportReportOverviewSharedXLSXPost**
> Uint8List apiReportReportOverviewSharedXLSXPost(listId, detailedRaws, groupId)

Generuje XLSX přehled sdíleného seznamu

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getReportApi();
final String listId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id seznamu
final bool detailedRaws = true; // bool | 
final String groupId = groupId_example; // String | 

try {
    final response = api.apiReportReportOverviewSharedXLSXPost(listId, detailedRaws, groupId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportApi->apiReportReportOverviewSharedXLSXPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **listId** | **String**| Id seznamu | [optional] 
 **detailedRaws** | **bool**|  | [optional] 
 **groupId** | **String**|  | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiReportReportOverviewXLSXPost**
> Uint8List apiReportReportOverviewXLSXPost(detailedRaws, groupId, requestBody)

Generuje XLSX přehled seznamu

### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getReportApi();
final bool detailedRaws = true; // bool | 
final String groupId = groupId_example; // String | 
final BuiltList<String> requestBody = ; // BuiltList<String> | 

try {
    final response = api.apiReportReportOverviewXLSXPost(detailedRaws, groupId, requestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportApi->apiReportReportOverviewXLSXPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **detailedRaws** | **bool**|  | [optional] 
 **groupId** | **String**|  | [optional] 
 **requestBody** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiReportReportProofOfOriginPost**
> Uint8List apiReportReportProofOfOriginPost(groupId, proofOfOriginDTO)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getReportApi();
final String groupId = groupId_example; // String | 
final ProofOfOriginDTO proofOfOriginDTO = ; // ProofOfOriginDTO | 

try {
    final response = api.apiReportReportProofOfOriginPost(groupId, proofOfOriginDTO);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportApi->apiReportReportProofOfOriginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | [optional] 
 **proofOfOriginDTO** | [**ProofOfOriginDTO**](ProofOfOriginDTO.md)|  | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/pdf

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

