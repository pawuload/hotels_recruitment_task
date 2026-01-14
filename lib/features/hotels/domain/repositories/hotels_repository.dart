import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:hotels/features/hotels/domain/entities/hotel/hotel.dart';

class HotelsResult {
  const HotelsResult({
    required this.hotels,
    required this.hotelCount,
  });

  final IList<Hotel> hotels;
  final int hotelCount;
}

abstract class HotelsRepository {
  Future<HotelsResult> getHotels();
}
