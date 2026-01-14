// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomsDtoImpl _$$RoomsDtoImplFromJson(Map<String, dynamic> json) =>
    _$RoomsDtoImpl(
      overall:
          RoomsOverallDto.fromJson(json['overall'] as Map<String, dynamic>),
      pricesAndOccupancy: (json['prices-and-occupancy'] as List<dynamic>)
          .map((e) =>
              RoomPricesAndOccupancyDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      roomGroups: (json['room-groups'] as List<dynamic>)
          .map((e) => RoomGroupDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoomsDtoImplToJson(_$RoomsDtoImpl instance) =>
    <String, dynamic>{
      'overall': instance.overall,
      'prices-and-occupancy': instance.pricesAndOccupancy,
      'room-groups': instance.roomGroups,
    };
