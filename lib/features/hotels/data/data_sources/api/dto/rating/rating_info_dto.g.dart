// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingInfoDtoImpl _$$RatingInfoDtoImplFromJson(Map<String, dynamic> json) =>
    _$RatingInfoDtoImpl(
      recommendationRate: (json['recommendation-rate'] as num).toInt(),
      reviewsCount: (json['reviews-count'] as num).toInt(),
      score: (json['score'] as num).toDouble(),
      scoreDescription: json['score-description'] as String,
    );

Map<String, dynamic> _$$RatingInfoDtoImplToJson(_$RatingInfoDtoImpl instance) =>
    <String, dynamic>{
      'recommendation-rate': instance.recommendationRate,
      'reviews-count': instance.reviewsCount,
      'score': instance.score,
      'score-description': instance.scoreDescription,
    };
