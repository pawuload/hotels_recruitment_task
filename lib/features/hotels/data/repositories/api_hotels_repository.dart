import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/hotel/hotel_dto.dart';
import 'package:hotels/features/hotels/data/data_sources/api/hotels_api.dart';
import 'package:hotels/features/hotels/domain/repositories/hotels_repository.dart';

class ApiHotelsRepository implements HotelsRepository {
  const ApiHotelsRepository({required HotelsApi hotelsApi})
    : _hotelsApi = hotelsApi;

  final HotelsApi _hotelsApi;

  @override
  Future<HotelsResult> getHotels() async {
    try {
      final response = await _hotelsApi.getHotels();
      final hotels = response.hotels.map((dto) => dto.toEntity()).toIList();
      return HotelsResult(
        hotels: hotels,
        hotelCount: response.hotelCount,
      );
    } catch (e) {
      throw Exception('Failed to get hotels: $e');
    }
  }
}
