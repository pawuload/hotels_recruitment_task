import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels/features/hotels/domain/entities/best_offer/travel_date/travel_date.dart';

part 'travel_date_dto.freezed.dart';
part 'travel_date_dto.g.dart';

@freezed
class TravelDateDto with _$TravelDateDto {
  const factory TravelDateDto({
    required int days,
    required String departureDate,
    required int nights,
    required String returnDate,
  }) = _TravelDateDto;

  factory TravelDateDto.fromJson(Map<String, dynamic> json) =>
      _$TravelDateDtoFromJson(json);
}

extension TravelDateDtoExtension on TravelDateDto {
  TravelDate toEntity() {
    return TravelDate(
      days: days,
      departureDate: DateTime.parse(departureDate),
      nights: nights,
      returnDate: DateTime.parse(returnDate),
    );
  }
}
