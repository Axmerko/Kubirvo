# kubirovacka_api.model.DeliveryNote

## Load the model package
```dart
import 'package:kubirovacka_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**licensePlate** | **String** |  | [optional] 
**dateOfDeparture** | [**DateTime**](DateTime.md) |  | [optional] 
**reportNumber** | **String** |  | [optional] 
**ownerGroupGuid** | **String** |  | [optional] 
**ownerUserGuid** | **String** |  | [optional] 
**customerId** | **String** |  | [optional] 
**carrierId** | **String** |  | [optional] 
**supplierId** | **String** |  | [optional] 
**exported** | **bool** |  | [optional] 
**locked** | **bool** |  | [optional] 
**deliveryNoteNumber** | **String** |  | [optional] 
**customer** | [**Company**](Company.md) |  | [optional] 
**carrier** | [**Company**](Company.md) |  | [optional] 
**supplier** | [**Company**](Company.md) |  | [optional] 
**ownerGroup** | [**Group**](Group.md) |  | [optional] 
**ownerUser** | [**User**](User.md) |  | [optional] 
**deliveryNoteItems** | [**BuiltList&lt;DeliveryNoteItem&gt;**](DeliveryNoteItem.md) |  | [optional] 
**deliveryNotePhotos** | [**BuiltList&lt;DeliveryNotePhoto&gt;**](DeliveryNotePhoto.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


