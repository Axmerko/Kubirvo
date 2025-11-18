# kubirovacka_api.model.LicensePaymentDTO

## Load the model package
```dart
import 'package:kubirovacka_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orderItems** | [**BuiltList&lt;LicensePaymentItemDTO&gt;**](LicensePaymentItemDTO.md) |  | 
**companyPurchase** | **bool** |  | [default to false]
**id** | **int** |  | [optional] 
**orderNumber** | **String** |  | [optional] 
**currency** | [**Currency**](Currency.md) |  | [optional] 
**lang** | **String** |  | [optional] [default to 'CS']
**paymentInstrument** | [**PaymentInstrument**](PaymentInstrument.md) |  | [optional] 
**companyName** | **String** |  | [optional] 
**companyCity** | **String** |  | [optional] 
**companyStreetAndNumber** | **String** |  | [optional] 
**companyZipCode** | **String** |  | [optional] 
**companyCountry** | **String** |  | [optional] 
**vatNum** | **String** |  | [optional] 
**taxId** | **String** |  | [optional] 
**orderedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**paidAt** | [**DateTime**](DateTime.md) |  | [optional] 
**customerName** | **String** |  | [optional] 
**customerEmail** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


