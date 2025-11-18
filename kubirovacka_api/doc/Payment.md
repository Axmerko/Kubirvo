# kubirovacka_api.model.Payment

## Load the model package
```dart
import 'package:kubirovacka_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**parentId** | **int** |  | [optional] 
**orderNumber** | **String** |  | [optional] 
**state** | [**SessionState**](SessionState.md) |  | [optional] 
**subState** | [**SessionSubState**](SessionSubState.md) |  | [optional] 
**paymentInstrument** | [**PaymentInstrument**](PaymentInstrument.md) |  | [optional] 
**amount** | **int** |  | [optional] 
**currency** | [**Currency**](Currency.md) |  | [optional] 
**payer** | [**Payer**](Payer.md) |  | [optional] 
**target** | [**Target**](Target.md) |  | [optional] 
**recurrence** | [**Recurrence**](Recurrence.md) |  | [optional] 
**preAuthorization** | [**PreAuthorization**](PreAuthorization.md) |  | [optional] 
**additionalParams** | [**BuiltList&lt;AdditionalParam&gt;**](AdditionalParam.md) |  | [optional] 
**lang** | **String** |  | [optional] 
**gwUrl** | **String** |  | [optional] 
**eetCode** | [**EETCode**](EETCode.md) |  | [optional] 
**items** | [**BuiltList&lt;OrderItem&gt;**](OrderItem.md) |  | [optional] 
**error** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


