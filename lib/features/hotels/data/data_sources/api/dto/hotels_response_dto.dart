import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels/features/hotels/data/data_sources/api/dto/hotel/hotel_dto.dart';

part 'hotels_response_dto.freezed.dart';
part 'hotels_response_dto.g.dart';

@freezed
class HotelsResponseDto with _$HotelsResponseDto {
  const factory HotelsResponseDto({
    required int hotelCount,
    required List<HotelDto> hotels,
  }) = _HotelsResponseDto;

  factory HotelsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$HotelsResponseDtoFromJson(json);
}
