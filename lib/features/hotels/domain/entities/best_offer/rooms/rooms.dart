import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels/features/hotels/domain/entities/best_offer/rooms/overall/rooms_overall.dart';
import 'package:hotels/features/hotels/domain/entities/best_offer/rooms/prices_and_occupancy/room_prices_and_occupancy.dart';
import 'package:hotels/features/hotels/domain/entities/best_offer/rooms/room_groups/room_group.dart';

part 'rooms.freezed.dart';

@freezed
class Rooms with _$Rooms {
  const factory Rooms({
    required RoomsOverall overall,
    required IList<RoomPricesAndOccupancy> pricesAndOccupancy,
    required IList<RoomGroup> roomGroups,
  }) = _Rooms;
}
