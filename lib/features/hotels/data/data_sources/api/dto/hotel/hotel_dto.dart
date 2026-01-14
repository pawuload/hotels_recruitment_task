import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/analytics/analytics_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/best_offer/best_offer_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/images/image_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/rating/rating_info_dto.dart';
import 'package:hotels/features/hotels/domain/entities/hotel/hotel.dart';

part 'hotel_dto.freezed.dart';

part 'hotel_dto.g.dart';

@freezed
class HotelDto with _$HotelDto {
  const factory HotelDto({
    required String hotelId,
    required String name,
    required String destination,
    required double latitude,
    required double longitude,
    required RatingInfoDto ratingInfo,
    required List<ImageDto> images,
    required int category,
    required String categoryType,
    required BestOfferDto bestOffer,
    @AnalyticsDtoConverter() required AnalyticsDto analytics,

    // TODO: update when types are known
    required List<dynamic> badges,
  }) = _HotelDto;

  factory HotelDto.fromJson(Map<String, dynamic> json) =>
      _$HotelDtoFromJson(json);
}

extension HotelDtoExtension on HotelDto {
  Hotel toEntity() => Hotel(
    hotelId: hotelId,
    name: name,
    destination: destination,
    latitude: latitude,
    longitude: longitude,
    ratingInfo: ratingInfo.toEntity(),
    images: images.map((dto) => dto.toEntity()).toIList(),
    category: category,
    categoryType: categoryType,
    bestOffer: bestOffer.toEntity(),
    analytics: analytics.toEntity(),
    badges: badges.toIList(),
  );
}
