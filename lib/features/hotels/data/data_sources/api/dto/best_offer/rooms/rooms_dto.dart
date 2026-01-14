import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/best_offer/rooms/overall/rooms_overall_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/best_offer/rooms/prices_and_occupancy/room_prices_and_occupancy_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/best_offer/rooms/room_groups/room_group_dto.dart';
import 'package:hotels/features/hotels/domain/entities/best_offer/rooms/rooms.dart';

part 'rooms_dto.freezed.dart';
part 'rooms_dto.g.dart';

@freezed
class RoomsDto with _$RoomsDto {
  const factory RoomsDto({
    required RoomsOverallDto overall,
    required List<RoomPricesAndOccupancyDto> pricesAndOccupancy,
    required List<RoomGroupDto> roomGroups,
  }) = _RoomsDto;

  factory RoomsDto.fromJson(Map<String, dynamic> json) =>
      _$RoomsDtoFromJson(json);
}

extension RoomsDtoExtension on RoomsDto {
  Rooms toEntity() => Rooms(
    overall: overall.toEntity(),
    pricesAndOccupancy: pricesAndOccupancy
        .map((dto) => dto.toEntity())
        .toIList(),
    roomGroups: roomGroups.map((dto) => dto.toEntity()).toIList(),
  );
}
