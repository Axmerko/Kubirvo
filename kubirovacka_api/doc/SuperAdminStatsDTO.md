# kubirovacka_api.model.SuperAdminStatsDTO

## Load the model package
```dart
import 'package:kubirovacka_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**confirmedUsers** | **int** |  | [optional] 
**activeLicenses** | **int** |  | [optional] 
**activeMonthLicenses** | **int** |  | [optional] 
**activeYearLicenses** | **int** |  | [optional] 
**paidLicensePayments** | [**BuiltMap&lt;String, Int32SuperAdminStatsYear&gt;**](Int32SuperAdminStatsYear.md) |  | [optional] 
**canceledOrTimeoutedLicensePayments** | [**BuiltMap&lt;String, Int32SuperAdminStatsYear&gt;**](Int32SuperAdminStatsYear.md) |  | [optional] 
**invoicesForPayments** | [**BuiltMap&lt;String, Int32SuperAdminStatsYear&gt;**](Int32SuperAdminStatsYear.md) |  | [optional] 
**moneyEarned** | [**BuiltMap&lt;String, DecimalSuperAdminStatsYear&gt;**](DecimalSuperAdminStatsYear.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


