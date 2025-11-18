# kubirovacka_api.model.Payer

## Load the model package
```dart
import 'package:kubirovacka_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentInstrument** | [**PaymentInstrument**](PaymentInstrument.md) |  | [optional] 
**allowedPaymentInstruments** | [**BuiltList&lt;PaymentInstrument&gt;**](PaymentInstrument.md) |  | [optional] 
**allowedSwifts** | **BuiltList&lt;String&gt;** |  | [optional] 
**defaultPaymentInstrument** | [**PaymentInstrument**](PaymentInstrument.md) |  | [optional] 
**defaultSwift** | **String** |  | [optional] 
**contact** | [**PayerContact**](PayerContact.md) |  | [optional] 
**paymendCard** | [**PayerPaymentCard**](PayerPaymentCard.md) |  | [optional] 
**cardId** | **String** |  | [optional] 
**bankAccount** | [**BankAccount**](BankAccount.md) |  | [optional] 
**allowedCardToken** | **String** |  | [optional] 
**verifyPin** | **String** |  | [optional] 
**requestCardToken** | **bool** |  | [optional] 
**maskedPan** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


