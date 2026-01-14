// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'best_offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BestOffer {
  double? get appliedTravelDiscount => throw _privateConstructorUsedError;
  IList<double> get detailedPricePerPerson =>
      throw _privateConstructorUsedError;
  int get includedTravelDiscount => throw _privateConstructorUsedError;
  int get originalTravelPrice => throw _privateConstructorUsedError;
  int get simplePricePerPerson => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get travelPrice => throw _privateConstructorUsedError;
  IList<String> get availableSpecialGroups =>
      throw _privateConstructorUsedError;
  bool get flightIncluded => throw _privateConstructorUsedError;
  Rooms get rooms => throw _privateConstructorUsedError;
  TravelDate get travelDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BestOfferCopyWith<BestOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestOfferCopyWith<$Res> {
  factory $BestOfferCopyWith(BestOffer value, $Res Function(BestOffer) then) =
      _$BestOfferCopyWithImpl<$Res, BestOffer>;
  @useResult
  $Res call(
      {double? appliedTravelDiscount,
      IList<double> detailedPricePerPerson,
      int includedTravelDiscount,
      int originalTravelPrice,
      int simplePricePerPerson,
      int total,
      int travelPrice,
      IList<String> availableSpecialGroups,
      bool flightIncluded,
      Rooms rooms,
      TravelDate travelDate});

  $RoomsCopyWith<$Res> get rooms;
  $TravelDateCopyWith<$Res> get travelDate;
}

/// @nodoc
class _$BestOfferCopyWithImpl<$Res, $Val extends BestOffer>
    implements $BestOfferCopyWith<$Res> {
  _$BestOfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appliedTravelDiscount = freezed,
    Object? detailedPricePerPerson = null,
    Object? includedTravelDiscount = null,
    Object? originalTravelPrice = null,
    Object? simplePricePerPerson = null,
    Object? total = null,
    Object? travelPrice = null,
    Object? availableSpecialGroups = null,
    Object? flightIncluded = null,
    Object? rooms = null,
    Object? travelDate = null,
  }) {
    return _then(_value.copyWith(
      appliedTravelDiscount: freezed == appliedTravelDiscount
          ? _value.appliedTravelDiscount
          : appliedTravelDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      detailedPricePerPerson: null == detailedPricePerPerson
          ? _value.detailedPricePerPerson
          : detailedPricePerPerson // ignore: cast_nullable_to_non_nullable
              as IList<double>,
      includedTravelDiscount: null == includedTravelDiscount
          ? _value.includedTravelDiscount
          : includedTravelDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      originalTravelPrice: null == originalTravelPrice
          ? _value.originalTravelPrice
          : originalTravelPrice // ignore: cast_nullable_to_non_nullable
              as int,
      simplePricePerPerson: null == simplePricePerPerson
          ? _value.simplePricePerPerson
          : simplePricePerPerson // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      travelPrice: null == travelPrice
          ? _value.travelPrice
          : travelPrice // ignore: cast_nullable_to_non_nullable
              as int,
      availableSpecialGroups: null == availableSpecialGroups
          ? _value.availableSpecialGroups
          : availableSpecialGroups // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      flightIncluded: null == flightIncluded
          ? _value.flightIncluded
          : flightIncluded // ignore: cast_nullable_to_non_nullable
              as bool,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as Rooms,
      travelDate: null == travelDate
          ? _value.travelDate
          : travelDate // ignore: cast_nullable_to_non_nullable
              as TravelDate,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomsCopyWith<$Res> get rooms {
    return $RoomsCopyWith<$Res>(_value.rooms, (value) {
      return _then(_value.copyWith(rooms: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelDateCopyWith<$Res> get travelDate {
    return $TravelDateCopyWith<$Res>(_value.travelDate, (value) {
      return _then(_value.copyWith(travelDate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BestOfferImplCopyWith<$Res>
    implements $BestOfferCopyWith<$Res> {
  factory _$$BestOfferImplCopyWith(
          _$BestOfferImpl value, $Res Function(_$BestOfferImpl) then) =
      __$$BestOfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? appliedTravelDiscount,
      IList<double> detailedPricePerPerson,
      int includedTravelDiscount,
      int originalTravelPrice,
      int simplePricePerPerson,
      int total,
      int travelPrice,
      IList<String> availableSpecialGroups,
      bool flightIncluded,
      Rooms rooms,
      TravelDate travelDate});

  @override
  $RoomsCopyWith<$Res> get rooms;
  @override
  $TravelDateCopyWith<$Res> get travelDate;
}

/// @nodoc
class __$$BestOfferImplCopyWithImpl<$Res>
    extends _$BestOfferCopyWithImpl<$Res, _$BestOfferImpl>
    implements _$$BestOfferImplCopyWith<$Res> {
  __$$BestOfferImplCopyWithImpl(
      _$BestOfferImpl _value, $Res Function(_$BestOfferImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appliedTravelDiscount = freezed,
    Object? detailedPricePerPerson = null,
    Object? includedTravelDiscount = null,
    Object? originalTravelPrice = null,
    Object? simplePricePerPerson = null,
    Object? total = null,
    Object? travelPrice = null,
    Object? availableSpecialGroups = null,
    Object? flightIncluded = null,
    Object? rooms = null,
    Object? travelDate = null,
  }) {
    return _then(_$BestOfferImpl(
      appliedTravelDiscount: freezed == appliedTravelDiscount
          ? _value.appliedTravelDiscount
          : appliedTravelDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      detailedPricePerPerson: null == detailedPricePerPerson
          ? _value.detailedPricePerPerson
          : detailedPricePerPerson // ignore: cast_nullable_to_non_nullable
              as IList<double>,
      includedTravelDiscount: null == includedTravelDiscount
          ? _value.includedTravelDiscount
          : includedTravelDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      originalTravelPrice: null == originalTravelPrice
          ? _value.originalTravelPrice
          : originalTravelPrice // ignore: cast_nullable_to_non_nullable
              as int,
      simplePricePerPerson: null == simplePricePerPerson
          ? _value.simplePricePerPerson
          : simplePricePerPerson // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      travelPrice: null == travelPrice
          ? _value.travelPrice
          : travelPrice // ignore: cast_nullable_to_non_nullable
              as int,
      availableSpecialGroups: null == availableSpecialGroups
          ? _value.availableSpecialGroups
          : availableSpecialGroups // ignore: cast_nullable_to_non_nullable
              as IList<String>,
      flightIncluded: null == flightIncluded
          ? _value.flightIncluded
          : flightIncluded // ignore: cast_nullable_to_non_nullable
              as bool,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as Rooms,
      travelDate: null == travelDate
          ? _value.travelDate
          : travelDate // ignore: cast_nullable_to_non_nullable
              as TravelDate,
    ));
  }
}

/// @nodoc

class _$BestOfferImpl implements _BestOffer {
  const _$BestOfferImpl(
      {required this.appliedTravelDiscount,
      required this.detailedPricePerPerson,
      required this.includedTravelDiscount,
      required this.originalTravelPrice,
      required this.simplePricePerPerson,
      required this.total,
      required this.travelPrice,
      required this.availableSpecialGroups,
      required this.flightIncluded,
      required this.rooms,
      required this.travelDate});

  @override
  final double? appliedTravelDiscount;
  @override
  final IList<double> detailedPricePerPerson;
  @override
  final int includedTravelDiscount;
  @override
  final int originalTravelPrice;
  @override
  final int simplePricePerPerson;
  @override
  final int total;
  @override
  final int travelPrice;
  @override
  final IList<String> availableSpecialGroups;
  @override
  final bool flightIncluded;
  @override
  final Rooms rooms;
  @override
  final TravelDate travelDate;

  @override
  String toString() {
    return 'BestOffer(appliedTravelDiscount: $appliedTravelDiscount, detailedPricePerPerson: $detailedPricePerPerson, includedTravelDiscount: $includedTravelDiscount, originalTravelPrice: $originalTravelPrice, simplePricePerPerson: $simplePricePerPerson, total: $total, travelPrice: $travelPrice, availableSpecialGroups: $availableSpecialGroups, flightIncluded: $flightIncluded, rooms: $rooms, travelDate: $travelDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestOfferImpl &&
            (identical(other.appliedTravelDiscount, appliedTravelDiscount) ||
                other.appliedTravelDiscount == appliedTravelDiscount) &&
            const DeepCollectionEquality()
                .equals(other.detailedPricePerPerson, detailedPricePerPerson) &&
            (identical(other.includedTravelDiscount, includedTravelDiscount) ||
                other.includedTravelDiscount == includedTravelDiscount) &&
            (identical(other.originalTravelPrice, originalTravelPrice) ||
                other.originalTravelPrice == originalTravelPrice) &&
            (identical(other.simplePricePerPerson, simplePricePerPerson) ||
                other.simplePricePerPerson == simplePricePerPerson) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.travelPrice, travelPrice) ||
                other.travelPrice == travelPrice) &&
            const DeepCollectionEquality()
                .equals(other.availableSpecialGroups, availableSpecialGroups) &&
            (identical(other.flightIncluded, flightIncluded) ||
                other.flightIncluded == flightIncluded) &&
            (identical(other.rooms, rooms) || other.rooms == rooms) &&
            (identical(other.travelDate, travelDate) ||
                other.travelDate == travelDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      appliedTravelDiscount,
      const DeepCollectionEquality().hash(detailedPricePerPerson),
      includedTravelDiscount,
      originalTravelPrice,
      simplePricePerPerson,
      total,
      travelPrice,
      const DeepCollectionEquality().hash(availableSpecialGroups),
      flightIncluded,
      rooms,
      travelDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BestOfferImplCopyWith<_$BestOfferImpl> get copyWith =>
      __$$BestOfferImplCopyWithImpl<_$BestOfferImpl>(this, _$identity);
}

abstract class _BestOffer implements BestOffer {
  const factory _BestOffer(
      {required final double? appliedTravelDiscount,
      required final IList<double> detailedPricePerPerson,
      required final int includedTravelDiscount,
      required final int originalTravelPrice,
      required final int simplePricePerPerson,
      required final int total,
      required final int travelPrice,
      required final IList<String> availableSpecialGroups,
      required final bool flightIncluded,
      required final Rooms rooms,
      required final TravelDate travelDate}) = _$BestOfferImpl;

  @override
  double? get appliedTravelDiscount;
  @override
  IList<double> get detailedPricePerPerson;
  @override
  int get includedTravelDiscount;
  @override
  int get originalTravelPrice;
  @override
  int get simplePricePerPerson;
  @override
  int get total;
  @override
  int get travelPrice;
  @override
  IList<String> get availableSpecialGroups;
  @override
  bool get flightIncluded;
  @override
  Rooms get rooms;
  @override
  TravelDate get travelDate;
  @override
  @JsonKey(ignore: true)
  _$$BestOfferImplCopyWith<_$BestOfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
