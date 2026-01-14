import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/analytics/analytics_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/best_offer/best_offer_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/best_offer/rooms/overall/rooms_overall_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/best_offer/rooms/prices_and_occupancy/room_prices_and_occupancy_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/best_offer/rooms/rooms_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/best_offer/travel_date/travel_date_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/hotel/hotel_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/hotels_response_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/images/image_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/rating/rating_info_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/hotels_api.dart';
import 'package:hotels/features/hotels/domain/entities/hotel/hotel.dart';
import 'package:hotels/features/hotels/domain/repositories/hotels_repository.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

class MockHotelsRepository extends Mock implements HotelsRepository {}

class MockHotelsApi extends Mock implements HotelsApi {}

class MockHttpClient extends Mock implements http.Client {}

class TestDataFactory {
  static RatingInfoDto createRatingInfoDto({
    int recommendationRate = 95,
    int reviewsCount = 100,
    double score = 4.5,
    String scoreDescription = 'Excellent',
  }) {
    return RatingInfoDto(
      recommendationRate: recommendationRate,
      reviewsCount: reviewsCount,
      score: score,
      scoreDescription: scoreDescription,
    );
  }

  static ImageDto createImageDto({
    String? large,
    String? small,
  }) {
    return ImageDto(
      large: large ?? 'https://example.com/large.jpg',
      small: small ?? 'https://example.com/small.jpg',
    );
  }

  static BestOfferDto createBestOfferDto({
    double? appliedTravelDiscount,
    List<double>? detailedPricePerPerson,
    int includedTravelDiscount = 0,
    int originalTravelPrice = 1000,
    int simplePricePerPerson = 500,
    int total = 1000,
    int travelPrice = 1000,
    List<String>? availableSpecialGroups,
    bool flightIncluded = false,
  }) {
    return BestOfferDto(
      appliedTravelDiscount: appliedTravelDiscount,
      detailedPricePerPerson: detailedPricePerPerson ?? [500.0],
      includedTravelDiscount: includedTravelDiscount,
      originalTravelPrice: originalTravelPrice,
      simplePricePerPerson: simplePricePerPerson,
      total: total,
      travelPrice: travelPrice,
      availableSpecialGroups: availableSpecialGroups ?? [],
      flightIncluded: flightIncluded,
      rooms: const RoomsDto(
        overall: RoomsOverallDto(
          attributes: [],
          boarding: 'BB',
          name: 'Standard Room',
          adultCount: 2,
          childrenAges: [],
          childrenCount: 0,
          quantity: 1,
          sameBoarding: true,
          sameRoomGroups: true,
        ),
        pricesAndOccupancy: [
          RoomPricesAndOccupancyDto(
            adultCount: 2,
            childrenAges: [],
            childrenCount: 0,
            detailedPricePerPerson: [],
            groupIdentifier: 'group-1',
            simplePricePerPerson: 500,
            total: 1000,
          ),
        ],
        roomGroups: [],
      ),
      travelDate: const TravelDateDto(
        days: 4,
        departureDate: '2024-01-01',
        nights: 3,
        returnDate: '2024-01-05',
      ),
    );
  }

  static AnalyticsDto createAnalyticsDto() {
    return const AnalyticsDto(items: {});
  }

  static HotelDto createHotelDto({
    String? hotelId,
    String? name,
    String? destination,
    double? latitude,
    double? longitude,
    RatingInfoDto? ratingInfo,
    List<ImageDto>? images,
    int category = 4,
    String categoryType = 'hotel',
    BestOfferDto? bestOffer,
    AnalyticsDto? analytics,
    List<dynamic>? badges,
  }) {
    return HotelDto(
      hotelId: hotelId ?? 'hotel-1',
      name: name ?? 'Test Hotel',
      destination: destination ?? 'Test Destination',
      latitude: latitude ?? 52.2297,
      longitude: longitude ?? 21.0122,
      ratingInfo: ratingInfo ?? createRatingInfoDto(),
      images: images ?? [createImageDto()],
      category: category,
      categoryType: categoryType,
      bestOffer: bestOffer ?? createBestOfferDto(),
      analytics: analytics ?? createAnalyticsDto(),
      badges: badges ?? [],
    );
  }

  static HotelsResponseDto createHotelsResponseDto({
    int? hotelCount,
    List<HotelDto>? hotels,
  }) {
    return HotelsResponseDto(
      hotelCount: hotelCount ?? 1,
      hotels: hotels ?? [createHotelDto()],
    );
  }

  static Hotel createHotel({
    String? hotelId,
    String? name,
    String? destination,
  }) {
    final dto = createHotelDto(
      hotelId: hotelId,
      name: name,
      destination: destination,
    );
    return dto.toEntity();
  }

  static HotelsResult createHotelsResult({
    int? hotelCount,
    List<Hotel>? hotels,
  }) {
    return HotelsResult(
      hotelCount: hotelCount ?? 1,
      hotels: (hotels ?? [createHotel()]).toIList(),
    );
  }
}
