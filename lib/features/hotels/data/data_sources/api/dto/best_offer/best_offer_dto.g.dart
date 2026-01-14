// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_offer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BestOfferDtoImpl _$$BestOfferDtoImplFromJson(Map<String, dynamic> json) =>
    _$BestOfferDtoImpl(
      appliedTravelDiscount:
          (json['applied-travel-discount'] as num?)?.toDouble(),
      detailedPricePerPerson:
          (json['detailed-price-per-person'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      includedTravelDiscount: (json['included-travel-discount'] as num).toInt(),
      originalTravelPrice: (json['original-travel-price'] as num).toInt(),
      simplePricePerPerson: (json['simple-price-per-person'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      travelPrice: (json['travel-price'] as num).toInt(),
      availableSpecialGroups:
          (json['available-special-groups'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      flightIncluded: json['flight-included'] as bool,
      rooms: RoomsDto.fromJson(json['rooms'] as Map<String, dynamic>),
      travelDate:
          TravelDateDto.fromJson(json['travel-date'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BestOfferDtoImplToJson(_$BestOfferDtoImpl instance) =>
    <String, dynamic>{
      'applied-travel-discount': instance.appliedTravelDiscount,
      'detailed-price-per-person': instance.detailedPricePerPerson,
      'included-travel-discount': instance.includedTravelDiscount,
      'original-travel-price': instance.originalTravelPrice,
      'simple-price-per-person': instance.simplePricePerPerson,
      'total': instance.total,
      'travel-price': instance.travelPrice,
      'available-special-groups': instance.availableSpecialGroups,
      'flight-included': instance.flightIncluded,
      'rooms': instance.rooms,
      'travel-date': instance.travelDate,
    };
