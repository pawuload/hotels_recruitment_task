import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/best_offer/rooms/rooms_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/best_offer/travel_date/travel_date_dto.dart';
import 'package:hotels/features/hotels/domain/entities/best_offer/best_offer.dart';

part 'best_offer_dto.freezed.dart';

part 'best_offer_dto.g.dart';

@freezed
class BestOfferDto with _$BestOfferDto {
  const factory BestOfferDto({
    required double? appliedTravelDiscount,
    required List<double> detailedPricePerPerson,
    required int includedTravelDiscount,
    required int originalTravelPrice,
    required int simplePricePerPerson,
    required int total,
    required int travelPrice,
    required List<String> availableSpecialGroups,
    required bool flightIncluded,
    required RoomsDto rooms,
    required TravelDateDto travelDate,
  }) = _BestOfferDto;

  factory BestOfferDto.fromJson(Map<String, dynamic> json) =>
      _$BestOfferDtoFromJson(json);
}

extension BestOfferDtoExtension on BestOfferDto {
  BestOffer toEntity() => BestOffer(
    appliedTravelDiscount: appliedTravelDiscount,
    detailedPricePerPerson: detailedPricePerPerson.toIList(),
    includedTravelDiscount: includedTravelDiscount,
    originalTravelPrice: originalTravelPrice,
    simplePricePerPerson: simplePricePerPerson,
    total: total,
    travelPrice: travelPrice,
    availableSpecialGroups: availableSpecialGroups.toIList(),
    flightIncluded: flightIncluded,
    rooms: rooms.toEntity(),
    travelDate: travelDate.toEntity(),
  );
}
