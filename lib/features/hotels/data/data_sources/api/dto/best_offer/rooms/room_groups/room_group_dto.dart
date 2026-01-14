import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels/features/hotels/domain/entities/best_offer/rooms/room_groups/room_group.dart';

part 'room_group_dto.freezed.dart';
part 'room_group_dto.g.dart';

@freezed
class RoomGroupDto with _$RoomGroupDto {
  const factory RoomGroupDto({
    // TODO: update when types are known
    required List<dynamic> attributes,
    required String boarding,
    required String name,
    required String? detailedDescription,
    required String groupIdentifier,
    required int quantity,
  }) = _RoomGroupDto;

  factory RoomGroupDto.fromJson(Map<String, dynamic> json) =>
      _$RoomGroupDtoFromJson(json);
}

extension RoomGroupDtoExtension on RoomGroupDto {
  RoomGroup toEntity() => RoomGroup(
    attributes: attributes.toIList(),
    boarding: boarding,
    name: name,
    detailedDescription: detailedDescription,
    groupIdentifier: groupIdentifier,
    quantity: quantity,
  );
}
