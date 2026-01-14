// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomGroupDtoImpl _$$RoomGroupDtoImplFromJson(Map<String, dynamic> json) =>
    _$RoomGroupDtoImpl(
      attributes: json['attributes'] as List<dynamic>,
      boarding: json['boarding'] as String,
      name: json['name'] as String,
      detailedDescription: json['detailed-description'] as String?,
      groupIdentifier: json['group-identifier'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$$RoomGroupDtoImplToJson(_$RoomGroupDtoImpl instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
      'boarding': instance.boarding,
      'name': instance.name,
      'detailed-description': instance.detailedDescription,
      'group-identifier': instance.groupIdentifier,
      'quantity': instance.quantity,
    };
