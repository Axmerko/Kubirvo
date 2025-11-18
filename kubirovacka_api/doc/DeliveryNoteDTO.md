# kubirovacka_api.model.DeliveryNoteDTO

## Load the model package
```dart
import 'package:kubirovacka_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**docNumber** | **String** |  | [optional] 
**supplier** | [**CompanyDTO**](CompanyDTO.md) |  | [optional] 
**customer** | [**CompanyDTO**](CompanyDTO.md) |  | [optional] 
**dateOfIssue** | [**DateTime**](DateTime.md) |  | [optional] 
**dateOfDelivery** | [**DateTime**](DateTime.md) |  | [optional] 
**bankAccount** | **String** |  | [optional] 
**variableSymbol** | **int** |  | [optional] 
**order** | **String** |  | [optional] 
**worker** | **String** |  | [optional] 
**shippingAndDelivery** | **String** |  | [optional] 
**condition** | **String** |  | [optional] 
**note** | **String** |  | [optional] 
**priceSubtotal** | **double** |  | [optional] 
**priceTax** | **double** |  | [optional] 
**priceShipping** | **double** |  | [optional] 
**priceTotal** | **double** |  | [optional] 
**totalVolume** | **double** |  | [optional] 
**otherCustomer** | **String** |  | [optional] 
**otherCustomerName** | **String** |  | [optional] 
**otherCustomerDate** | [**DateTime**](DateTime.md) |  | [optional] 
**otherCustomerTime** | **String** |  | [optional] 
**otherSupplier** | **String** |  | [optional] 
**otherSupplierContact** | **String** |  | [optional] 
**otherSupplierEmail** | **String** |  | [optional] 
**otherSupplierPhone** | **String** |  | [optional] 
**woodLogsIds** | **BuiltList&lt;String&gt;** |  | [optional] 
**woodLogs** | [**BuiltList&lt;WoodLogReportDTO&gt;**](WoodLogReportDTO.md) |  | [optional] 
**m3PerLog** | **double** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


