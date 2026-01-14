import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels/features/hotels/domain/entities/best_offer/rooms/prices_and_occupancy/room_prices_and_occupancy.dart';

part 'room_prices_and_occupancy_dto.freezed.dart';
part 'room_prices_and_occupancy_dto.g.dart';

@freezed
class RoomPricesAndOccupancyDto with _$RoomPricesAndOccupancyDto {
  const factory RoomPricesAndOccupancyDto({
    // TODO: update dynamics when types are known
    required int adultCount,
    required List<dynamic> childrenAges,
    required int childrenCount,
    required List<dynamic> detailedPricePerPerson,
    required String groupIdentifier,
    required double simplePricePerPerson,
    required double total,
  }) = _RoomPricesAndOccupancyDto;

  factory RoomPricesAndOccupancyDto.fromJson(Map<String, dynamic> json) =>
      _$RoomPricesAndOccupancyDtoFromJson(json);
}

extension RoomPricesAndOccupancyDtoExtension on RoomPricesAndOccupancyDto {
  RoomPricesAndOccupancy toEntity() => RoomPricesAndOccupancy(
    adultCount: adultCount,
    childrenAges: childrenAges.toIList(),
    childrenCount: childrenCount,
    detailedPricePerPerson: detailedPricePerPerson.toIList(),
    groupIdentifier: groupIdentifier,
    simplePricePerPerson: simplePricePerPerson,
    total: total,
  );
}
