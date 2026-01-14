// ignore_for_file: inference_failure_on_collection_literal

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hotels/core/data/api/api_config.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/hotels_response_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/hotels_api.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

import '../../../../../helpers/helpers.dart';

void main() {
  setUpAll(() {
    registerFallbackValue(Uri.parse('https://example.com'));
  });

  group('HotelsApi', () {
    late MockHttpClient mockHttpClient;
    late HotelsApi hotelsApi;

    setUp(() {
      mockHttpClient = MockHttpClient();
      hotelsApi = HotelsApi(client: mockHttpClient);
    });

    test(
      'getHotels returns HotelsResponseDto on successful response',
      () async {
        final jsonResponse = jsonEncode({
          'hotel-count': 1,
          'hotels': [
            {
              'hotel-id': 'test-hotel-1',
              'name': 'Test Hotel',
              'destination': 'Test Destination',
              'latitude': 52.2297,
              'longitude': 21.0122,
              'rating-info': {
                'recommendation-rate': 95,
                'reviews-count': 100,
                'score': 4.5,
                'score-description': 'Excellent',
              },
              'images': [
                {
                  'large': 'https://example.com/large.jpg',
                  'small': 'https://example.com/small.jpg',
                },
              ],
              'category': 4,
              'category-type': 'hotel',
              'best-offer': {
                'applied-travel-discount': null,
                'detailed-price-per-person': [500.0],
                'included-travel-discount': 0,
                'original-travel-price': 1000,
                'simple-price-per-person': 500,
                'total': 1000,
                'travel-price': 1000,
                'available-special-groups': [],
                'flight-included': false,
                'rooms': {
                  'overall': {
                    'attributes': [],
                    'boarding': 'BB',
                    'name': 'Standard Room',
                    'adult-count': 2,
                    'children-ages': [],
                    'children-count': 0,
                    'quantity': 1,
                    'same-boarding': true,
                    'same-room-groups': true,
                  },
                  'prices-and-occupancy': [
                    {
                      'adult-count': 2,
                      'children-ages': [],
                      'children-count': 0,
                      'detailed-price-per-person': [],
                      'group-identifier': 'group-1',
                      'simple-price-per-person': 500.0,
                      'total': 1000.0,
                    },
                  ],
                  'room-groups': [],
                },
                'travel-date': {
                  'days': 4,
                  'departure-date': '2024-01-01',
                  'nights': 3,
                  'return-date': '2024-01-05',
                },
              },
              'analytics': {},
              'badges': [],
            },
          ],
        });

        when(() => mockHttpClient.get(any())).thenAnswer(
          (_) async => http.Response(jsonResponse, 200),
        );

        final result = await hotelsApi.getHotels();

        expect(result, isA<HotelsResponseDto>());
        expect(result.hotelCount, 1);
        expect(result.hotels.length, 1);
        expect(result.hotels[0].hotelId, 'test-hotel-1');
        verify(
          () => mockHttpClient.get(
            Uri.parse(ApiConfig.hotelsApiUrl),
          ),
        ).called(1);
      },
    );

    test('getHotels throws Exception when status code is not 200', () async {
      when(() => mockHttpClient.get(any())).thenAnswer(
        (_) async => http.Response('Not Found', 404),
      );

      expect(
        () => hotelsApi.getHotels(),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'message',
            contains('Failed to load hotels: 404'),
          ),
        ),
      );
    });

    test('getHotels throws Exception on network error', () async {
      when(() => mockHttpClient.get(any())).thenThrow(
        Exception('Network error'),
      );

      expect(
        () => hotelsApi.getHotels(),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'message',
            contains('Failed to fetch hotels'),
          ),
        ),
      );
    });

    test('getHotels throws Exception on invalid JSON', () async {
      when(() => mockHttpClient.get(any())).thenAnswer(
        (_) async => http.Response('invalid json', 200),
      );

      expect(
        () => hotelsApi.getHotels(),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'message',
            contains('Failed to fetch hotels'),
          ),
        ),
      );
    });

    test('getHotels uses correct API URL', () async {
      final jsonResponse = jsonEncode({
        'hotel-count': 0,
        'hotels': [],
      });

      when(() => mockHttpClient.get(any())).thenAnswer(
        (_) async => http.Response(jsonResponse, 200),
      );

      await hotelsApi.getHotels();

      verify(
        () => mockHttpClient.get(
          Uri.parse(ApiConfig.hotelsApiUrl),
        ),
      ).called(1);
    });

    test('getHotels handles 500 server error', () async {
      when(() => mockHttpClient.get(any())).thenAnswer(
        (_) async => http.Response('Internal Server Error', 500),
      );

      expect(
        () => hotelsApi.getHotels(),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'message',
            contains('Failed to load hotels: 500'),
          ),
        ),
      );
    });
  });
}
