// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalyticsItemDtoImpl _$$AnalyticsItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AnalyticsItemDtoImpl(
      currency: json['currency'] as String,
      itemCategory: json['itemCategory'] as String,
      itemCategory2: json['itemCategory2'] as String,
      itemId: json['itemId'] as String,
      itemListName: json['itemListName'] as String,
      itemName: json['itemName'] as String,
      itemRooms: json['itemRooms'] as String,
      price: json['price'] as String,
      quantity: json['quantity'] as String,
    );

Map<String, dynamic> _$$AnalyticsItemDtoImplToJson(
        _$AnalyticsItemDtoImpl instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'itemCategory': instance.itemCategory,
      'itemCategory2': instance.itemCategory2,
      'itemId': instance.itemId,
      'itemListName': instance.itemListName,
      'itemName': instance.itemName,
      'itemRooms': instance.itemRooms,
      'price': instance.price,
      'quantity': instance.quantity,
    };
