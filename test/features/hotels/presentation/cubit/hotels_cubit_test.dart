import 'package:bloc_test/bloc_test.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hotels/features/hotels/domain/entities/hotel/hotel.dart';
import 'package:hotels/features/hotels/presentation/cubit/hotels_cubit.dart';
import 'package:hotels/features/hotels/presentation/cubit/hotels_state.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../helpers/helpers.dart';

void main() {
  group('HotelsCubit', () {
    late MockHotelsRepository mockHotelsRepository;

    setUp(() {
      mockHotelsRepository = MockHotelsRepository();
    });

    test('initial state is HotelsState.initial', () {
      final cubit = HotelsCubit(hotelsRepository: mockHotelsRepository);

      expect(cubit.state, const HotelsState.initial());
    });

    blocTest<HotelsCubit, HotelsState>(
      'emits [loading, success] when fetchHotels succeeds',
      build: () {
        when(() => mockHotelsRepository.getHotels()).thenAnswer(
          (_) async => TestDataFactory.createHotelsResult(
            hotelCount: 2,
            hotels: [
              TestDataFactory.createHotel(hotelId: 'hotel-1', name: 'Hotel 1'),
              TestDataFactory.createHotel(hotelId: 'hotel-2', name: 'Hotel 2'),
            ],
          ),
        );
        return HotelsCubit(hotelsRepository: mockHotelsRepository);
      },
      act: (cubit) => cubit.fetchHotels(),
      expect: () => [
        const HotelsState.loading(),
        HotelsState.success(
          hotels: IList([
            TestDataFactory.createHotel(hotelId: 'hotel-1', name: 'Hotel 1'),
            TestDataFactory.createHotel(hotelId: 'hotel-2', name: 'Hotel 2'),
          ]),
          hotelCount: 2,
        ),
      ],
      verify: (_) {
        verify(() => mockHotelsRepository.getHotels()).called(1);
      },
    );

    blocTest<HotelsCubit, HotelsState>(
      'emits [loading, success] with empty list when no hotels are returned',
      build: () {
        when(() => mockHotelsRepository.getHotels()).thenAnswer(
          (_) async => TestDataFactory.createHotelsResult(
            hotelCount: 0,
            hotels: [],
          ),
        );
        return HotelsCubit(hotelsRepository: mockHotelsRepository);
      },
      act: (cubit) => cubit.fetchHotels(),
      expect: () => [
        const HotelsState.loading(),
        HotelsState.success(
          hotels: IList<Hotel>(const []),
          hotelCount: 0,
        ),
      ],
    );

    blocTest<HotelsCubit, HotelsState>(
      'emits [loading, error] when fetchHotels throws an exception',
      build: () {
        when(() => mockHotelsRepository.getHotels()).thenThrow(
          Exception('Network error'),
        );
        return HotelsCubit(hotelsRepository: mockHotelsRepository);
      },
      act: (cubit) => cubit.fetchHotels(),
      expect: () => [
        const HotelsState.loading(),
        const HotelsState.error('Exception: Network error'),
      ],
      verify: (_) {
        verify(() => mockHotelsRepository.getHotels()).called(1);
      },
    );

    blocTest<HotelsCubit, HotelsState>(
      'emits [loading, error] when repository throws a generic exception',
      build: () {
        when(() => mockHotelsRepository.getHotels()).thenThrow(
          Exception('Failed to get hotels: Connection timeout'),
        );
        return HotelsCubit(hotelsRepository: mockHotelsRepository);
      },
      act: (cubit) => cubit.fetchHotels(),
      expect: () => [
        const HotelsState.loading(),
        const HotelsState.error(
          'Exception: Failed to get hotels: Connection timeout',
        ),
      ],
    );

    blocTest<HotelsCubit, HotelsState>(
      'handles multiple sequential fetchHotels calls correctly',
      build: () {
        when(
          () => mockHotelsRepository.getHotels(),
        ).thenAnswer((_) async => TestDataFactory.createHotelsResult());
        return HotelsCubit(hotelsRepository: mockHotelsRepository);
      },
      act: (cubit) async {
        await cubit.fetchHotels();
        await cubit.fetchHotels();
      },
      expect: () => [
        const HotelsState.loading(),
        HotelsState.success(
          hotels: IList([TestDataFactory.createHotel()]),
          hotelCount: 1,
        ),
        const HotelsState.loading(),
        HotelsState.success(
          hotels: IList([TestDataFactory.createHotel()]),
          hotelCount: 1,
        ),
      ],
      verify: (_) {
        verify(() => mockHotelsRepository.getHotels()).called(2);
      },
    );
  });
}
