// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'best_offer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BestOfferDto _$BestOfferDtoFromJson(Map<String, dynamic> json) {
  return _BestOfferDto.fromJson(json);
}

/// @nodoc
mixin _$BestOfferDto {
  double? get appliedTravelDiscount => throw _privateConstructorUsedError;
  List<double> get detailedPricePerPerson => throw _privateConstructorUsedError;
  int get includedTravelDiscount => throw _privateConstructorUsedError;
  int get originalTravelPrice => throw _privateConstructorUsedError;
  int get simplePricePerPerson => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get travelPrice => throw _privateConstructorUsedError;
  List<String> get availableSpecialGroups => throw _privateConstructorUsedError;
  bool get flightIncluded => throw _privateConstructorUsedError;
  RoomsDto get rooms => throw _privateConstructorUsedError;
  TravelDateDto get travelDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestOfferDtoCopyWith<BestOfferDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestOfferDtoCopyWith<$Res> {
  factory $BestOfferDtoCopyWith(
          BestOfferDto value, $Res Function(BestOfferDto) then) =
      _$BestOfferDtoCopyWithImpl<$Res, BestOfferDto>;
  @useResult
  $Res call(
      {double? appliedTravelDiscount,
      List<double> detailedPricePerPerson,
      int includedTravelDiscount,
      int originalTravelPrice,
      int simplePricePerPerson,
      int total,
      int travelPrice,
      List<String> availableSpecialGroups,
      bool flightIncluded,
      RoomsDto rooms,
      TravelDateDto travelDate});

  $RoomsDtoCopyWith<$Res> get rooms;
  $TravelDateDtoCopyWith<$Res> get travelDate;
}

/// @nodoc
class _$BestOfferDtoCopyWithImpl<$Res, $Val extends BestOfferDto>
    implements $BestOfferDtoCopyWith<$Res> {
  _$BestOfferDtoCopyWithImpl(this._value, this._then);

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
              as List<double>,
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
              as List<String>,
      flightIncluded: null == flightIncluded
          ? _value.flightIncluded
          : flightIncluded // ignore: cast_nullable_to_non_nullable
              as bool,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as RoomsDto,
      travelDate: null == travelDate
          ? _value.travelDate
          : travelDate // ignore: cast_nullable_to_non_nullable
              as TravelDateDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomsDtoCopyWith<$Res> get rooms {
    return $RoomsDtoCopyWith<$Res>(_value.rooms, (value) {
      return _then(_value.copyWith(rooms: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelDateDtoCopyWith<$Res> get travelDate {
    return $TravelDateDtoCopyWith<$Res>(_value.travelDate, (value) {
      return _then(_value.copyWith(travelDate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BestOfferDtoImplCopyWith<$Res>
    implements $BestOfferDtoCopyWith<$Res> {
  factory _$$BestOfferDtoImplCopyWith(
          _$BestOfferDtoImpl value, $Res Function(_$BestOfferDtoImpl) then) =
      __$$BestOfferDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? appliedTravelDiscount,
      List<double> detailedPricePerPerson,
      int includedTravelDiscount,
      int originalTravelPrice,
      int simplePricePerPerson,
      int total,
      int travelPrice,
      List<String> availableSpecialGroups,
      bool flightIncluded,
      RoomsDto rooms,
      TravelDateDto travelDate});

  @override
  $RoomsDtoCopyWith<$Res> get rooms;
  @override
  $TravelDateDtoCopyWith<$Res> get travelDate;
}

/// @nodoc
class __$$BestOfferDtoImplCopyWithImpl<$Res>
    extends _$BestOfferDtoCopyWithImpl<$Res, _$BestOfferDtoImpl>
    implements _$$BestOfferDtoImplCopyWith<$Res> {
  __$$BestOfferDtoImplCopyWithImpl(
      _$BestOfferDtoImpl _value, $Res Function(_$BestOfferDtoImpl) _then)
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
    return _then(_$BestOfferDtoImpl(
      appliedTravelDiscount: freezed == appliedTravelDiscount
          ? _value.appliedTravelDiscount
          : appliedTravelDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      detailedPricePerPerson: null == detailedPricePerPerson
          ? _value._detailedPricePerPerson
          : detailedPricePerPerson // ignore: cast_nullable_to_non_nullable
              as List<double>,
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
          ? _value._availableSpecialGroups
          : availableSpecialGroups // ignore: cast_nullable_to_non_nullable
              as List<String>,
      flightIncluded: null == flightIncluded
          ? _value.flightIncluded
          : flightIncluded // ignore: cast_nullable_to_non_nullable
              as bool,
      rooms: null == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as RoomsDto,
      travelDate: null == travelDate
          ? _value.travelDate
          : travelDate // ignore: cast_nullable_to_non_nullable
              as TravelDateDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BestOfferDtoImpl implements _BestOfferDto {
  const _$BestOfferDtoImpl(
      {required this.appliedTravelDiscount,
      required final List<double> detailedPricePerPerson,
      required this.includedTravelDiscount,
      required this.originalTravelPrice,
      required this.simplePricePerPerson,
      required this.total,
      required this.travelPrice,
      required final List<String> availableSpecialGroups,
      required this.flightIncluded,
      required this.rooms,
      required this.travelDate})
      : _detailedPricePerPerson = detailedPricePerPerson,
        _availableSpecialGroups = availableSpecialGroups;

  factory _$BestOfferDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BestOfferDtoImplFromJson(json);

  @override
  final double? appliedTravelDiscount;
  final List<double> _detailedPricePerPerson;
  @override
  List<double> get detailedPricePerPerson {
    if (_detailedPricePerPerson is EqualUnmodifiableListView)
      return _detailedPricePerPerson;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_detailedPricePerPerson);
  }

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
  final List<String> _availableSpecialGroups;
  @override
  List<String> get availableSpecialGroups {
    if (_availableSpecialGroups is EqualUnmodifiableListView)
      return _availableSpecialGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableSpecialGroups);
  }

  @override
  final bool flightIncluded;
  @override
  final RoomsDto rooms;
  @override
  final TravelDateDto travelDate;

  @override
  String toString() {
    return 'BestOfferDto(appliedTravelDiscount: $appliedTravelDiscount, detailedPricePerPerson: $detailedPricePerPerson, includedTravelDiscount: $includedTravelDiscount, originalTravelPrice: $originalTravelPrice, simplePricePerPerson: $simplePricePerPerson, total: $total, travelPrice: $travelPrice, availableSpecialGroups: $availableSpecialGroups, flightIncluded: $flightIncluded, rooms: $rooms, travelDate: $travelDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestOfferDtoImpl &&
            (identical(other.appliedTravelDiscount, appliedTravelDiscount) ||
                other.appliedTravelDiscount == appliedTravelDiscount) &&
            const DeepCollectionEquality().equals(
                other._detailedPricePerPerson, _detailedPricePerPerson) &&
            (identical(other.includedTravelDiscount, includedTravelDiscount) ||
                other.includedTravelDiscount == includedTravelDiscount) &&
            (identical(other.originalTravelPrice, originalTravelPrice) ||
                other.originalTravelPrice == originalTravelPrice) &&
            (identical(other.simplePricePerPerson, simplePricePerPerson) ||
                other.simplePricePerPerson == simplePricePerPerson) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.travelPrice, travelPrice) ||
                other.travelPrice == travelPrice) &&
            const DeepCollectionEquality().equals(
                other._availableSpecialGroups, _availableSpecialGroups) &&
            (identical(other.flightIncluded, flightIncluded) ||
                other.flightIncluded == flightIncluded) &&
            (identical(other.rooms, rooms) || other.rooms == rooms) &&
            (identical(other.travelDate, travelDate) ||
                other.travelDate == travelDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      appliedTravelDiscount,
      const DeepCollectionEquality().hash(_detailedPricePerPerson),
      includedTravelDiscount,
      originalTravelPrice,
      simplePricePerPerson,
      total,
      travelPrice,
      const DeepCollectionEquality().hash(_availableSpecialGroups),
      flightIncluded,
      rooms,
      travelDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BestOfferDtoImplCopyWith<_$BestOfferDtoImpl> get copyWith =>
      __$$BestOfferDtoImplCopyWithImpl<_$BestOfferDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BestOfferDtoImplToJson(
      this,
    );
  }
}

abstract class _BestOfferDto implements BestOfferDto {
  const factory _BestOfferDto(
      {required final double? appliedTravelDiscount,
      required final List<double> detailedPricePerPerson,
      required final int includedTravelDiscount,
      required final int originalTravelPrice,
      required final int simplePricePerPerson,
      required final int total,
      required final int travelPrice,
      required final List<String> availableSpecialGroups,
      required final bool flightIncluded,
      required final RoomsDto rooms,
      required final TravelDateDto travelDate}) = _$BestOfferDtoImpl;

  factory _BestOfferDto.fromJson(Map<String, dynamic> json) =
      _$BestOfferDtoImpl.fromJson;

  @override
  double? get appliedTravelDiscount;
  @override
  List<double> get detailedPricePerPerson;
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
  List<String> get availableSpecialGroups;
  @override
  bool get flightIncluded;
  @override
  RoomsDto get rooms;
  @override
  TravelDateDto get travelDate;
  @override
  @JsonKey(ignore: true)
  _$$BestOfferDtoImplCopyWith<_$BestOfferDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
