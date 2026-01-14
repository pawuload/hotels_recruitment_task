import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:hotels/core/data/api/api_config.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/hotels_response_dto.dart';
import 'package:http/http.dart' as http;

class HotelsApi {
  const HotelsApi({required http.Client client}) : _client = client;

  final http.Client _client;

  Future<HotelsResponseDto> getHotels() async {
    try {
      final response = await _client.get(
        Uri.parse(ApiConfig.hotelsApiUrl),
      );

      if (response.statusCode != 200) {
        throw Exception(
          'Failed to load hotels: ${response.statusCode}',
        );
      }

      final jsonData = json.decode(response.body) as Map<String, dynamic>;
      return HotelsResponseDto.fromJson(jsonData);
    } catch (e, s) {
      if (kDebugMode) {
        print('[HotelsApi] Error in getHotels: $e');
        print('[HotelsApi] Stack trace: $s');
      }
      throw Exception('Failed to fetch hotels: $e');
    }
  }
}
