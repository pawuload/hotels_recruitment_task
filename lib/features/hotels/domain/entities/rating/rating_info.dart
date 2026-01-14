import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_info.freezed.dart';

@freezed
abstract class RatingInfo with _$RatingInfo {
  const factory RatingInfo({
    required int recommendationRate,
    required int reviewsCount,
    required double score,
    required String scoreDescription,
  }) = _RatingInfo;
}
