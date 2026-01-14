// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Hotel {
  String get hotelId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  RatingInfo get ratingInfo => throw _privateConstructorUsedError;
  IList<Image> get images => throw _privateConstructorUsedError;
  int get category => throw _privateConstructorUsedError;
  String get categoryType => throw _privateConstructorUsedError;
  BestOffer get bestOffer => throw _privateConstructorUsedError;
  Analytics get analytics =>
      throw _privateConstructorUsedError; // TODO: update when types are known
  IList<dynamic> get badges => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotelCopyWith<Hotel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelCopyWith<$Res> {
  factory $HotelCopyWith(Hotel value, $Res Function(Hotel) then) =
      _$HotelCopyWithImpl<$Res, Hotel>;
  @useResult
  $Res call(
      {String hotelId,
      String name,
      String destination,
      double latitude,
      double longitude,
      RatingInfo ratingInfo,
      IList<Image> images,
      int category,
      String categoryType,
      BestOffer bestOffer,
      Analytics analytics,
      IList<dynamic> badges});

  $RatingInfoCopyWith<$Res> get ratingInfo;
  $BestOfferCopyWith<$Res> get bestOffer;
  $AnalyticsCopyWith<$Res> get analytics;
}

/// @nodoc
class _$HotelCopyWithImpl<$Res, $Val extends Hotel>
    implements $HotelCopyWith<$Res> {
  _$HotelCopyWithImpl(this._value, this._then);

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
              as RatingInfo,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as IList<Image>,
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
              as BestOffer,
      analytics: null == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as Analytics,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as IList<dynamic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingInfoCopyWith<$Res> get ratingInfo {
    return $RatingInfoCopyWith<$Res>(_value.ratingInfo, (value) {
      return _then(_value.copyWith(ratingInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BestOfferCopyWith<$Res> get bestOffer {
    return $BestOfferCopyWith<$Res>(_value.bestOffer, (value) {
      return _then(_value.copyWith(bestOffer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnalyticsCopyWith<$Res> get analytics {
    return $AnalyticsCopyWith<$Res>(_value.analytics, (value) {
      return _then(_value.copyWith(analytics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelImplCopyWith<$Res> implements $HotelCopyWith<$Res> {
  factory _$$HotelImplCopyWith(
          _$HotelImpl value, $Res Function(_$HotelImpl) then) =
      __$$HotelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hotelId,
      String name,
      String destination,
      double latitude,
      double longitude,
      RatingInfo ratingInfo,
      IList<Image> images,
      int category,
      String categoryType,
      BestOffer bestOffer,
      Analytics analytics,
      IList<dynamic> badges});

  @override
  $RatingInfoCopyWith<$Res> get ratingInfo;
  @override
  $BestOfferCopyWith<$Res> get bestOffer;
  @override
  $AnalyticsCopyWith<$Res> get analytics;
}

/// @nodoc
class __$$HotelImplCopyWithImpl<$Res>
    extends _$HotelCopyWithImpl<$Res, _$HotelImpl>
    implements _$$HotelImplCopyWith<$Res> {
  __$$HotelImplCopyWithImpl(
      _$HotelImpl _value, $Res Function(_$HotelImpl) _then)
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
    return _then(_$HotelImpl(
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
              as RatingInfo,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as IList<Image>,
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
              as BestOffer,
      analytics: null == analytics
          ? _value.analytics
          : analytics // ignore: cast_nullable_to_non_nullable
              as Analytics,
      badges: null == badges
          ? _value.badges
          : badges // ignore: cast_nullable_to_non_nullable
              as IList<dynamic>,
    ));
  }
}

/// @nodoc

class _$HotelImpl implements _Hotel {
  const _$HotelImpl(
      {required this.hotelId,
      required this.name,
      required this.destination,
      required this.latitude,
      required this.longitude,
      required this.ratingInfo,
      required this.images,
      required this.category,
      required this.categoryType,
      required this.bestOffer,
      required this.analytics,
      required this.badges});

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
  final RatingInfo ratingInfo;
  @override
  final IList<Image> images;
  @override
  final int category;
  @override
  final String categoryType;
  @override
  final BestOffer bestOffer;
  @override
  final Analytics analytics;
// TODO: update when types are known
  @override
  final IList<dynamic> badges;

  @override
  String toString() {
    return 'Hotel(hotelId: $hotelId, name: $name, destination: $destination, latitude: $latitude, longitude: $longitude, ratingInfo: $ratingInfo, images: $images, category: $category, categoryType: $categoryType, bestOffer: $bestOffer, analytics: $analytics, badges: $badges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelImpl &&
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
            const DeepCollectionEquality().equals(other.images, images) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.categoryType, categoryType) ||
                other.categoryType == categoryType) &&
            (identical(other.bestOffer, bestOffer) ||
                other.bestOffer == bestOffer) &&
            (identical(other.analytics, analytics) ||
                other.analytics == analytics) &&
            const DeepCollectionEquality().equals(other.badges, badges));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hotelId,
      name,
      destination,
      latitude,
      longitude,
      ratingInfo,
      const DeepCollectionEquality().hash(images),
      category,
      categoryType,
      bestOffer,
      analytics,
      const DeepCollectionEquality().hash(badges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelImplCopyWith<_$HotelImpl> get copyWith =>
      __$$HotelImplCopyWithImpl<_$HotelImpl>(this, _$identity);
}

abstract class _Hotel implements Hotel {
  const factory _Hotel(
      {required final String hotelId,
      required final String name,
      required final String destination,
      required final double latitude,
      required final double longitude,
      required final RatingInfo ratingInfo,
      required final IList<Image> images,
      required final int category,
      required final String categoryType,
      required final BestOffer bestOffer,
      required final Analytics analytics,
      required final IList<dynamic> badges}) = _$HotelImpl;

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
  RatingInfo get ratingInfo;
  @override
  IList<Image> get images;
  @override
  int get category;
  @override
  String get categoryType;
  @override
  BestOffer get bestOffer;
  @override
  Analytics get analytics;
  @override // TODO: update when types are known
  IList<dynamic> get badges;
  @override
  @JsonKey(ignore: true)
  _$$HotelImplCopyWith<_$HotelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
