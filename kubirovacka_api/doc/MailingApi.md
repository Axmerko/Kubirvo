# kubirovacka_api.api.MailingApi

## Load the API package
```dart
import 'package:kubirovacka_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiMailingMailingPost**](MailingApi.md#apimailingmailingpost) | **POST** /api/Mailing/Mailing | 


# **apiMailingMailingPost**
> apiMailingMailingPost(targetType, subject, body, isHtml, groupId, emails)



### Example
```dart
import 'package:kubirovacka_api/api.dart';
// TODO Configure API key authorization: Bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('Bearer').apiKeyPrefix = 'Bearer';

final api = KubirovackaApi().getMailingApi();
final MailingTargetType targetType = ; // MailingTargetType | 
final String subject = subject_example; // String | 
final String body = body_example; // String | 
final bool isHtml = true; // bool | 
final String groupId = groupId_example; // String | 
final String emails = emails_example; // String | 

try {
    api.apiMailingMailingPost(targetType, subject, body, isHtml, groupId, emails);
} catch on DioException (e) {
    print('Exception when calling MailingApi->apiMailingMailingPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **targetType** | [**MailingTargetType**](MailingTargetType.md)|  | 
 **subject** | **String**|  | 
 **body** | **String**|  | 
 **isHtml** | **bool**|  | 
 **groupId** | **String**|  | [optional] 
 **emails** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

