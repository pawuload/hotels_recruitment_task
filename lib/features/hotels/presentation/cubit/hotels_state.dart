import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels/features/hotels/domain/entities/hotel/hotel.dart';

part 'hotels_state.freezed.dart';

@freezed
class HotelsState with _$HotelsState {
  const factory HotelsState.initial() = _Initial;
  const factory HotelsState.loading() = _Loading;
  const factory HotelsState.success({
    required IList<Hotel> hotels,
    required int hotelCount,
  }) = _Success;
  const factory HotelsState.error(String message) = _Error;
}
