import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels/features/hotels/domain/entities/rating/rating_info.dart';

part 'rating_info_dto.freezed.dart';
part 'rating_info_dto.g.dart';

@freezed
class RatingInfoDto with _$RatingInfoDto {
  const factory RatingInfoDto({
    required int recommendationRate,
    required int reviewsCount,
    required double score,
    required String scoreDescription,
  }) = _RatingInfoDto;

  factory RatingInfoDto.fromJson(Map<String, dynamic> json) =>
      _$RatingInfoDtoFromJson(json);
}

extension RatingInfoDtoExtension on RatingInfoDto {
  RatingInfo toEntity() => RatingInfo(
    recommendationRate: recommendationRate,
    reviewsCount: reviewsCount,
    score: score,
    scoreDescription: scoreDescription,
  );
}
