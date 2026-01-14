// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TravelDate {
  int get days => throw _privateConstructorUsedError;
  DateTime get departureDate => throw _privateConstructorUsedError;
  int get nights => throw _privateConstructorUsedError;
  DateTime get returnDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelDateCopyWith<TravelDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDateCopyWith<$Res> {
  factory $TravelDateCopyWith(
          TravelDate value, $Res Function(TravelDate) then) =
      _$TravelDateCopyWithImpl<$Res, TravelDate>;
  @useResult
  $Res call(
      {int days, DateTime departureDate, int nights, DateTime returnDate});
}

/// @nodoc
class _$TravelDateCopyWithImpl<$Res, $Val extends TravelDate>
    implements $TravelDateCopyWith<$Res> {
  _$TravelDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? departureDate = null,
    Object? nights = null,
    Object? returnDate = null,
  }) {
    return _then(_value.copyWith(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      departureDate: null == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nights: null == nights
          ? _value.nights
          : nights // ignore: cast_nullable_to_non_nullable
              as int,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelDateImplCopyWith<$Res>
    implements $TravelDateCopyWith<$Res> {
  factory _$$TravelDateImplCopyWith(
          _$TravelDateImpl value, $Res Function(_$TravelDateImpl) then) =
      __$$TravelDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int days, DateTime departureDate, int nights, DateTime returnDate});
}

/// @nodoc
class __$$TravelDateImplCopyWithImpl<$Res>
    extends _$TravelDateCopyWithImpl<$Res, _$TravelDateImpl>
    implements _$$TravelDateImplCopyWith<$Res> {
  __$$TravelDateImplCopyWithImpl(
      _$TravelDateImpl _value, $Res Function(_$TravelDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? departureDate = null,
    Object? nights = null,
    Object? returnDate = null,
  }) {
    return _then(_$TravelDateImpl(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      departureDate: null == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nights: null == nights
          ? _value.nights
          : nights // ignore: cast_nullable_to_non_nullable
              as int,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TravelDateImpl implements _TravelDate {
  const _$TravelDateImpl(
      {required this.days,
      required this.departureDate,
      required this.nights,
      required this.returnDate});

  @override
  final int days;
  @override
  final DateTime departureDate;
  @override
  final int nights;
  @override
  final DateTime returnDate;

  @override
  String toString() {
    return 'TravelDate(days: $days, departureDate: $departureDate, nights: $nights, returnDate: $returnDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelDateImpl &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.departureDate, departureDate) ||
                other.departureDate == departureDate) &&
            (identical(other.nights, nights) || other.nights == nights) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, days, departureDate, nights, returnDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelDateImplCopyWith<_$TravelDateImpl> get copyWith =>
      __$$TravelDateImplCopyWithImpl<_$TravelDateImpl>(this, _$identity);
}

abstract class _TravelDate implements TravelDate {
  const factory _TravelDate(
      {required final int days,
      required final DateTime departureDate,
      required final int nights,
      required final DateTime returnDate}) = _$TravelDateImpl;

  @override
  int get days;
  @override
  DateTime get departureDate;
  @override
  int get nights;
  @override
  DateTime get returnDate;
  @override
  @JsonKey(ignore: true)
  _$$TravelDateImplCopyWith<_$TravelDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
