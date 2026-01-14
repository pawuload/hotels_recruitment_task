// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotelDto _$HotelDtoFromJson(Map<String, dynamic> json) {
  return _HotelDto.fromJson(json);
}

/// @nodoc
mixin _$HotelDto {
  String get hotelId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  RatingInfoDto get ratingInfo => throw _privateConstructorUsedError;
  List<ImageDto> get images => throw _privateConstructorUsedError;
  int get category => throw _privateConstructorUsedError;
  String get categoryType => throw _privateConstructorUsedError;
  BestOfferDto get bestOffer => throw _privateConstructorUsedError;
  @AnalyticsDtoConverter()
  AnalyticsDto get analytics =>
      throw _privateConstructorUsedError; // TODO: update when types are known
  List<dynamic> get badges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelDtoCopyWith<HotelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelDtoCopyWith<$Res> {
  factory $HotelDtoCopyWith(HotelDto value, $Res Function(HotelDto) then) =
      _$HotelDtoCopyWithImpl<$Res, HotelDto>;
  @useResult
  $Res call(
      {String hotelId,
      String name,
      String destination,
      double latitude,
      double longitude,
      RatingInfoDto ratingInfo,
      List<ImageDto> images,
      int category,
      String categoryType,
      BestOfferDto bestOffer,
      @AnalyticsDtoConverter() AnalyticsDto analytics,
      List<dynamic> badges});

  $RatingInfoDtoCopyWith<$Res> get ratingInfo;
  $BestOfferDtoCopyWith<$Res> get bestOffer;
  $AnalyticsDtoCopyWith<$Res> get analytics;
}

/// @nodoc
class _$HotelDtoCopyWithImpl<$Res, $Val extends HotelDto>
    implements $HotelDtoCopyWith<$Res> {
  _$HotelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotelId = null,
    Object? name = null,
    Object? destination = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? ratingInfo = null,
    Object? images = null,
    Object? category = null,
    Object? categoryType = null,
    Object? bestOffer = null,
    Object? analytics = null,
    Object? badges = null,
  }) {
    return _then(_value.copyWith(
      hotelId: null == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      ratingInfo: null == ratingInfo
          ? _value.ratingInfo
          : ratingInfo // ignore: cast_nullable_to_non_nullable
              as RatingInfoDto,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDto>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String,
      bestOffer: null == bestOffer
          ? _value.bestOffer
          : bestOffer // ignore: cast_nullable_to_non_nullable
              as BestOfferDto,
      analytics: null == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as AnalyticsDto,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingInfoDtoCopyWith<$Res> get ratingInfo {
    return $RatingInfoDtoCopyWith<$Res>(_value.ratingInfo, (value) {
      return _then(_value.copyWith(ratingInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BestOfferDtoCopyWith<$Res> get bestOffer {
    return $BestOfferDtoCopyWith<$Res>(_value.bestOffer, (value) {
      return _then(_value.copyWith(bestOffer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnalyticsDtoCopyWith<$Res> get analytics {
    return $AnalyticsDtoCopyWith<$Res>(_value.analytics, (value) {
      return _then(_value.copyWith(analytics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelDtoImplCopyWith<$Res>
    implements $HotelDtoCopyWith<$Res> {
  factory _$$HotelDtoImplCopyWith(
          _$HotelDtoImpl value, $Res Function(_$HotelDtoImpl) then) =
      __$$HotelDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hotelId,
      String name,
      String destination,
      double latitude,
      double longitude,
      RatingInfoDto ratingInfo,
      List<ImageDto> images,
      int category,
      String categoryType,
      BestOfferDto bestOffer,
      @AnalyticsDtoConverter() AnalyticsDto analytics,
      List<dynamic> badges});

  @override
  $RatingInfoDtoCopyWith<$Res> get ratingInfo;
  @override
  $BestOfferDtoCopyWith<$Res> get bestOffer;
  @override
  $AnalyticsDtoCopyWith<$Res> get analytics;
}

/// @nodoc
class __$$HotelDtoImplCopyWithImpl<$Res>
    extends _$HotelDtoCopyWithImpl<$Res, _$HotelDtoImpl>
    implements _$$HotelDtoImplCopyWith<$Res> {
  __$$HotelDtoImplCopyWithImpl(
      _$HotelDtoImpl _value, $Res Function(_$HotelDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hotelId = null,
    Object? name = null,
    Object? destination = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? ratingInfo = null,
    Object? images = null,
    Object? category = null,
    Object? categoryType = null,
    Object? bestOffer = null,
    Object? analytics = null,
    Object? badges = null,
  }) {
    return _then(_$HotelDtoImpl(
      hotelId: null == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      ratingInfo: null == ratingInfo
          ? _value.ratingInfo
          : ratingInfo // ignore: cast_nullable_to_non_nullable
              as RatingInfoDto,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDto>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      categoryType: null == categoryType
          ? _value.categoryType
          : categoryType // ignore: cast_nullable_to_non_nullable
              as String,
      bestOffer: null == bestOffer
          ? _value.bestOffer
          : bestOffer // ignore: cast_nullable_to_non_nullable
              as BestOfferDto,
      analytics: null == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as AnalyticsDto,
      badges: null == badges
          ? _value._badges
          : badges // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelDtoImpl implements _HotelDto {
  const _$HotelDtoImpl(
      {required this.hotelId,
      required this.name,
      required this.destination,
      required this.latitude,
      required this.longitude,
      required this.ratingInfo,
      required final List<ImageDto> images,
      required this.category,
      required this.categoryType,
      required this.bestOffer,
      @AnalyticsDtoConverter() required this.analytics,
      required final List<dynamic> badges})
      : _images = images,
        _badges = badges;

  factory _$HotelDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelDtoImplFromJson(json);

  @override
  final String hotelId;
  @override
  final String name;
  @override
  final String destination;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final RatingInfoDto ratingInfo;
  final List<ImageDto> _images;
  @override
  List<ImageDto> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final int category;
  @override
  final String categoryType;
  @override
  final BestOfferDto bestOffer;
  @override
  @AnalyticsDtoConverter()
  final AnalyticsDto analytics;
// TODO: update when types are known
  final List<dynamic> _badges;
// TODO: update when types are known
  @override
  List<dynamic> get badges {
    if (_badges is EqualUnmodifiableListView) return _badges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_badges);
  }

  @override
  String toString() {
    return 'HotelDto(hotelId: $hotelId, name: $name, destination: $destination, latitude: $latitude, longitude: $longitude, ratingInfo: $ratingInfo, images: $images, category: $category, categoryType: $categoryType, bestOffer: $bestOffer, analytics: $analytics, badges: $badges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelDtoImpl &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.ratingInfo, ratingInfo) ||
                other.ratingInfo == ratingInfo) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType) &&
            (identical(other.bestOffer, bestOffer) ||
                other.bestOffer == bestOffer) &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            const DeepCollectionEquality().equals(other._badges, _badges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      hotelId,
      name,
      destination,
      latitude,
      longitude,
      ratingInfo,
      const DeepCollectionEquality().hash(_images),
      category,
      categoryType,
      bestOffer,
      analytics,
      const DeepCollectionEquality().hash(_badges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelDtoImplCopyWith<_$HotelDtoImpl> get copyWith =>
      __$$HotelDtoImplCopyWithImpl<_$HotelDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelDtoImplToJson(
      this,
    );
  }
}

abstract class _HotelDto implements HotelDto {
  const factory _HotelDto(
      {required final String hotelId,
      required final String name,
      required final String destination,
      required final double latitude,
      required final double longitude,
      required final RatingInfoDto ratingInfo,
      required final List<ImageDto> images,
      required final int category,
      required final String categoryType,
      required final BestOfferDto bestOffer,
      @AnalyticsDtoConverter() required final AnalyticsDto analytics,
      required final List<dynamic> badges}) = _$HotelDtoImpl;

  factory _HotelDto.fromJson(Map<String, dynamic> json) =
      _$HotelDtoImpl.fromJson;

  @override
  String get hotelId;
  @override
  String get name;
  @override
  String get destination;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  RatingInfoDto get ratingInfo;
  @override
  List<ImageDto> get images;
  @override
  int get category;
  @override
  String get categoryType;
  @override
  BestOfferDto get bestOffer;
  @override
  @AnalyticsDtoConverter()
  AnalyticsDto get analytics;
  @override // TODO: update when types are known
  List<dynamic> get badges;
  @override
  @JsonKey(ignore: true)
  _$$HotelDtoImplCopyWith<_$HotelDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
