import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels/features/hotels/domain/entities/best_offer/rooms/rooms.dart';
import 'package:hotels/features/hotels/domain/entities/best_offer/travel_date/travel_date.dart';

part 'best_offer.freezed.dart';

@freezed
class BestOffer with _$BestOffer {
  const factory BestOffer({
    required double? appliedTravelDiscount,
    required IList<double> detailedPricePerPerson,
    required int includedTravelDiscount,
    required int originalTravelPrice,
    required int simplePricePerPerson,
    required int total,
    required int travelPrice,
    required IList<String> availableSpecialGroups,
    required bool flightIncluded,
    required Rooms rooms,
    required TravelDate travelDate,
  }) = _BestOffer;
}
