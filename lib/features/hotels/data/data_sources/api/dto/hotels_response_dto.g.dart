// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotels_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelsResponseDtoImpl _$$HotelsResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$HotelsResponseDtoImpl(
      hotelCount: (json['hotel-count'] as num).toInt(),
      hotels: (json['hotels'] as List<dynamic>)
          .map((e) => HotelDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HotelsResponseDtoImplToJson(
        _$HotelsResponseDtoImpl instance) =>
    <String, dynamic>{
      'hotel-count': instance.hotelCount,
      'hotels': instance.hotels,
    };
