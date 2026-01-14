// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_date_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TravelDateDto _$TravelDateDtoFromJson(Map<String, dynamic> json) {
  return _TravelDateDto.fromJson(json);
}

/// @nodoc
mixin _$TravelDateDto {
  int get days => throw _privateConstructorUsedError;
  String get departureDate => throw _privateConstructorUsedError;
  int get nights => throw _privateConstructorUsedError;
  String get returnDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelDateDtoCopyWith<TravelDateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDateDtoCopyWith<$Res> {
  factory $TravelDateDtoCopyWith(
          TravelDateDto value, $Res Function(TravelDateDto) then) =
      _$TravelDateDtoCopyWithImpl<$Res, TravelDateDto>;
  @useResult
  $Res call({int days, String departureDate, int nights, String returnDate});
}

/// @nodoc
class _$TravelDateDtoCopyWithImpl<$Res, $Val extends TravelDateDto>
    implements $TravelDateDtoCopyWith<$Res> {
  _$TravelDateDtoCopyWithImpl(this._value, this._then);

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
              as String,
      nights: null == nights
          ? _value.nights
          : nights // ignore: cast_nullable_to_non_nullable
              as int,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelDateDtoImplCopyWith<$Res>
    implements $TravelDateDtoCopyWith<$Res> {
  factory _$$TravelDateDtoImplCopyWith(
          _$TravelDateDtoImpl value, $Res Function(_$TravelDateDtoImpl) then) =
      __$$TravelDateDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int days, String departureDate, int nights, String returnDate});
}

/// @nodoc
class __$$TravelDateDtoImplCopyWithImpl<$Res>
    extends _$TravelDateDtoCopyWithImpl<$Res, _$TravelDateDtoImpl>
    implements _$$TravelDateDtoImplCopyWith<$Res> {
  __$$TravelDateDtoImplCopyWithImpl(
      _$TravelDateDtoImpl _value, $Res Function(_$TravelDateDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? departureDate = null,
    Object? nights = null,
    Object? returnDate = null,
  }) {
    return _then(_$TravelDateDtoImpl(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      departureDate: null == departureDate
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as String,
      nights: null == nights
          ? _value.nights
          : nights // ignore: cast_nullable_to_non_nullable
              as int,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelDateDtoImpl implements _TravelDateDto {
  const _$TravelDateDtoImpl(
      {required this.days,
      required this.departureDate,
      required this.nights,
      required this.returnDate});

  factory _$TravelDateDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelDateDtoImplFromJson(json);

  @override
  final int days;
  @override
  final String departureDate;
  @override
  final int nights;
  @override
  final String returnDate;

  @override
  String toString() {
    return 'TravelDateDto(days: $days, departureDate: $departureDate, nights: $nights, returnDate: $returnDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelDateDtoImpl &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.departureDate, departureDate) ||
                other.departureDate == departureDate) &&
            (identical(other.nights, nights) || other.nights == nights) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, days, departureDate, nights, returnDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelDateDtoImplCopyWith<_$TravelDateDtoImpl> get copyWith =>
      __$$TravelDateDtoImplCopyWithImpl<_$TravelDateDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelDateDtoImplToJson(
      this,
    );
  }
}

abstract class _TravelDateDto implements TravelDateDto {
  const factory _TravelDateDto(
      {required final int days,
      required final String departureDate,
      required final int nights,
      required final String returnDate}) = _$TravelDateDtoImpl;

  factory _TravelDateDto.fromJson(Map<String, dynamic> json) =
      _$TravelDateDtoImpl.fromJson;

  @override
  int get days;
  @override
  String get departureDate;
  @override
  int get nights;
  @override
  String get returnDate;
  @override
  @JsonKey(ignore: true)
  _$$TravelDateDtoImplCopyWith<_$TravelDateDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
