// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RatingInfoDto _$RatingInfoDtoFromJson(Map<String, dynamic> json) {
  return _RatingInfoDto.fromJson(json);
}

/// @nodoc
mixin _$RatingInfoDto {
  int get recommendationRate => throw _privateConstructorUsedError;
  int get reviewsCount => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  String get scoreDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingInfoDtoCopyWith<RatingInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingInfoDtoCopyWith<$Res> {
  factory $RatingInfoDtoCopyWith(
          RatingInfoDto value, $Res Function(RatingInfoDto) then) =
      _$RatingInfoDtoCopyWithImpl<$Res, RatingInfoDto>;
  @useResult
  $Res call(
      {int recommendationRate,
      int reviewsCount,
      double score,
      String scoreDescription});
}

/// @nodoc
class _$RatingInfoDtoCopyWithImpl<$Res, $Val extends RatingInfoDto>
    implements $RatingInfoDtoCopyWith<$Res> {
  _$RatingInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendationRate = null,
    Object? reviewsCount = null,
    Object? score = null,
    Object? scoreDescription = null,
  }) {
    return _then(_value.copyWith(
      recommendationRate: null == recommendationRate
          ? _value.recommendationRate
          : recommendationRate // ignore: cast_nullable_to_non_nullable
              as int,
      reviewsCount: null == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      scoreDescription: null == scoreDescription
          ? _value.scoreDescription
          : scoreDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingInfoDtoImplCopyWith<$Res>
    implements $RatingInfoDtoCopyWith<$Res> {
  factory _$$RatingInfoDtoImplCopyWith(
          _$RatingInfoDtoImpl value, $Res Function(_$RatingInfoDtoImpl) then) =
      __$$RatingInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int recommendationRate,
      int reviewsCount,
      double score,
      String scoreDescription});
}

/// @nodoc
class __$$RatingInfoDtoImplCopyWithImpl<$Res>
    extends _$RatingInfoDtoCopyWithImpl<$Res, _$RatingInfoDtoImpl>
    implements _$$RatingInfoDtoImplCopyWith<$Res> {
  __$$RatingInfoDtoImplCopyWithImpl(
      _$RatingInfoDtoImpl _value, $Res Function(_$RatingInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendationRate = null,
    Object? reviewsCount = null,
    Object? score = null,
    Object? scoreDescription = null,
  }) {
    return _then(_$RatingInfoDtoImpl(
      recommendationRate: null == recommendationRate
          ? _value.recommendationRate
          : recommendationRate // ignore: cast_nullable_to_non_nullable
              as int,
      reviewsCount: null == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      scoreDescription: null == scoreDescription
          ? _value.scoreDescription
          : scoreDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingInfoDtoImpl implements _RatingInfoDto {
  const _$RatingInfoDtoImpl(
      {required this.recommendationRate,
      required this.reviewsCount,
      required this.score,
      required this.scoreDescription});

  factory _$RatingInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingInfoDtoImplFromJson(json);

  @override
  final int recommendationRate;
  @override
  final int reviewsCount;
  @override
  final double score;
  @override
  final String scoreDescription;

  @override
  String toString() {
    return 'RatingInfoDto(recommendationRate: $recommendationRate, reviewsCount: $reviewsCount, score: $score, scoreDescription: $scoreDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingInfoDtoImpl &&
            (identical(other.recommendationRate, recommendationRate) ||
                other.recommendationRate == recommendationRate) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.scoreDescription, scoreDescription) ||
                other.scoreDescription == scoreDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, recommendationRate, reviewsCount, score, scoreDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingInfoDtoImplCopyWith<_$RatingInfoDtoImpl> get copyWith =>
      __$$RatingInfoDtoImplCopyWithImpl<_$RatingInfoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _RatingInfoDto implements RatingInfoDto {
  const factory _RatingInfoDto(
      {required final int recommendationRate,
      required final int reviewsCount,
      required final double score,
      required final String scoreDescription}) = _$RatingInfoDtoImpl;

  factory _RatingInfoDto.fromJson(Map<String, dynamic> json) =
      _$RatingInfoDtoImpl.fromJson;

  @override
  int get recommendationRate;
  @override
  int get reviewsCount;
  @override
  double get score;
  @override
  String get scoreDescription;
  @override
  @JsonKey(ignore: true)
  _$$RatingInfoDtoImplCopyWith<_$RatingInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
