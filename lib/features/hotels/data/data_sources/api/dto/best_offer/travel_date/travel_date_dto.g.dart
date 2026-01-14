// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_date_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelDateDtoImpl _$$TravelDateDtoImplFromJson(Map<String, dynamic> json) =>
    _$TravelDateDtoImpl(
      days: (json['days'] as num).toInt(),
      departureDate: json['departure-date'] as String,
      nights: (json['nights'] as num).toInt(),
      returnDate: json['return-date'] as String,
    );

Map<String, dynamic> _$$TravelDateDtoImplToJson(_$TravelDateDtoImpl instance) =>
    <String, dynamic>{
      'days': instance.days,
      'departure-date': instance.departureDate,
      'nights': instance.nights,
      'return-date': instance.returnDate,
    };
