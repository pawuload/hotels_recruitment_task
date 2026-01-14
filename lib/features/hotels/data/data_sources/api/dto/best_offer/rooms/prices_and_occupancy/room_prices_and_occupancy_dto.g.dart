// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_prices_and_occupancy_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomPricesAndOccupancyDtoImpl _$$RoomPricesAndOccupancyDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RoomPricesAndOccupancyDtoImpl(
      adultCount: (json['adult-count'] as num).toInt(),
      childrenAges: json['children-ages'] as List<dynamic>,
      childrenCount: (json['children-count'] as num).toInt(),
      detailedPricePerPerson:
          json['detailed-price-per-person'] as List<dynamic>,
      groupIdentifier: json['group-identifier'] as String,
      simplePricePerPerson: (json['simple-price-per-person'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
    );

Map<String, dynamic> _$$RoomPricesAndOccupancyDtoImplToJson(
        _$RoomPricesAndOccupancyDtoImpl instance) =>
    <String, dynamic>{
      'adult-count': instance.adultCount,
      'children-ages': instance.childrenAges,
      'children-count': instance.childrenCount,
      'detailed-price-per-person': instance.detailedPricePerPerson,
      'group-identifier': instance.groupIdentifier,
      'simple-price-per-person': instance.simplePricePerPerson,
      'total': instance.total,
    };
