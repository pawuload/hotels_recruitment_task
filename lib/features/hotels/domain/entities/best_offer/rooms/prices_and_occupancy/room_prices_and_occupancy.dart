import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_prices_and_occupancy.freezed.dart';

@freezed
class RoomPricesAndOccupancy with _$RoomPricesAndOccupancy {
  const factory RoomPricesAndOccupancy({
    // TODO: update dynamics when types are known
    required int adultCount,
    required IList<dynamic> childrenAges,
    required int childrenCount,
    required IList<dynamic> detailedPricePerPerson,
    required String groupIdentifier,
    required double simplePricePerPerson,
    required double total,
  }) = _RoomPricesAndOccupancy;
}
