# kubirovacka_api.model.LicensePayment

## Load the model package
```dart
import 'package:kubirovacka_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**orderNumber** | **String** |  | 
**customerId** | **String** |  | 
**companyPurchase** | **bool** |  | 
**provider** | [**LicensePaymentProvider**](LicensePaymentProvider.md) |  | 
**orderedAt** | [**DateTime**](DateTime.md) |  | 
**currency** | [**Currency**](Currency.md) |  | 
**state** | [**SessionState**](SessionState.md) |  | 
**customer** | [**User**](User.md) |  | [optional] 
**companyName** | **String** |  | [optional] 
**companyCity** | **String** |  | [optional] 
**companyStreetAndNumber** | **String** |  | [optional] 
**companyZipCode** | **String** |  | [optional] 
**companyCountry** | **String** |  | [optional] 
**vatNum** | **String** |  | [optional] 
**taxId** | **String** |  | [optional] 
**purchaseId** | **String** |  | [optional] 
**paidAt** | [**DateTime**](DateTime.md) |  | [optional] 
**licensePaymentItems** | [**BuiltList&lt;LicensePaymentItem&gt;**](LicensePaymentItem.md) |  | [optional] 
**invoiceGenerated** | **bool** |  | [optional] 
**invoiceSent** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


