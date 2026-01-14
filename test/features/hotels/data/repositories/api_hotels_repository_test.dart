import 'package:flutter_test/flutter_test.dart';
import 'package:hotels/features/hotels/data/repositories/api_hotels_repository.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('ApiHotelsRepository', () {
    late MockHotelsApi mockHotelsApi;
    late ApiHotelsRepository repository;

    setUp(() {
      mockHotelsApi = MockHotelsApi();
      repository = ApiHotelsRepository(hotelsApi: mockHotelsApi);
    });

    test('getHotels returns HotelsResult with converted entities', () async {
      final responseDto = TestDataFactory.createHotelsResponseDto(
        hotelCount: 2,
        hotels: [
          TestDataFactory.createHotelDto(
            hotelId: 'hotel-1',
            name: 'Hotel One',
            destination: 'Paris',
          ),
          TestDataFactory.createHotelDto(
            hotelId: 'hotel-2',
            name: 'Hotel Two',
            destination: 'London',
          ),
        ],
      );

      when(
        () => mockHotelsApi.getHotels(),
      ).thenAnswer((_) async => responseDto);

      final result = await repository.getHotels();

      expect(result.hotelCount, 2);
      expect(result.hotels.length, 2);
      expect(result.hotels[0].hotelId, 'hotel-1');
      expect(result.hotels[0].name, 'Hotel One');
      expect(result.hotels[0].destination, 'Paris');
      expect(result.hotels[1].hotelId, 'hotel-2');
      expect(result.hotels[1].name, 'Hotel Two');
      expect(result.hotels[1].destination, 'London');
      verify(() => mockHotelsApi.getHotels()).called(1);
    });

    test('getHotels returns empty list when no hotels in response', () async {
      final responseDto = TestDataFactory.createHotelsResponseDto(
        hotelCount: 0,
        hotels: [],
      );

      when(
        () => mockHotelsApi.getHotels(),
      ).thenAnswer((_) async => responseDto);

      final result = await repository.getHotels();

      expect(result.hotelCount, 0);
      expect(result.hotels.length, 0);
      verify(() => mockHotelsApi.getHotels()).called(1);
    });

    test('getHotels throws Exception when API call fails', () async {
      when(() => mockHotelsApi.getHotels()).thenThrow(
        Exception('Network error'),
      );

      expect(
        () => repository.getHotels(),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'message',
            contains('Failed to get hotels'),
          ),
        ),
      );
      verify(() => mockHotelsApi.getHotels()).called(1);
    });

    test('getHotels wraps API exceptions with descriptive message', () async {
      when(() => mockHotelsApi.getHotels()).thenThrow(
        Exception('Connection timeout'),
      );

      expect(
        () => repository.getHotels(),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'message',
            'Exception: Failed to get hotels: Exception: Connection timeout',
          ),
        ),
      );
    });

    test('getHotels correctly converts DTOs to entities', () async {
      final hotelDto = TestDataFactory.createHotelDto(
        hotelId: 'test-hotel',
        name: 'Test Hotel Name',
        destination: 'Test Destination',
        latitude: 40.7128,
        longitude: -74.0060,
        category: 5,
        categoryType: 'resort',
      );

      final responseDto = TestDataFactory.createHotelsResponseDto(
        hotelCount: 1,
        hotels: [hotelDto],
      );

      when(
        () => mockHotelsApi.getHotels(),
      ).thenAnswer((_) async => responseDto);

      final result = await repository.getHotels();

      expect(result.hotels.length, 1);
      final hotel = result.hotels[0];
      expect(hotel.hotelId, 'test-hotel');
      expect(hotel.name, 'Test Hotel Name');
      expect(hotel.destination, 'Test Destination');
      expect(hotel.latitude, 40.7128);
      expect(hotel.longitude, -74.0060);
      expect(hotel.category, 5);
      expect(hotel.categoryType, 'resort');
    });
  });
}
