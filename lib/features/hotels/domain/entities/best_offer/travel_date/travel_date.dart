import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_date.freezed.dart';

@freezed
class TravelDate with _$TravelDate {
  const factory TravelDate({
    required int days,
    required DateTime departureDate,
    required int nights,
    required DateTime returnDate,
  }) = _TravelDate;
}
