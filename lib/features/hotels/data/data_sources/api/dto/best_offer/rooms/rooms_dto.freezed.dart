// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoomsDto _$RoomsDtoFromJson(Map<String, dynamic> json) {
  return _RoomsDto.fromJson(json);
}

/// @nodoc
mixin _$RoomsDto {
  RoomsOverallDto get overall => throw _privateConstructorUsedError;
  List<RoomPricesAndOccupancyDto> get pricesAndOccupancy =>
      throw _privateConstructorUsedError;
  List<RoomGroupDto> get roomGroups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomsDtoCopyWith<RoomsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsDtoCopyWith<$Res> {
  factory $RoomsDtoCopyWith(RoomsDto value, $Res Function(RoomsDto) then) =
      _$RoomsDtoCopyWithImpl<$Res, RoomsDto>;
  @useResult
  $Res call(
      {RoomsOverallDto overall,
      List<RoomPricesAndOccupancyDto> pricesAndOccupancy,
      List<RoomGroupDto> roomGroups});

  $RoomsOverallDtoCopyWith<$Res> get overall;
}

/// @nodoc
class _$RoomsDtoCopyWithImpl<$Res, $Val extends RoomsDto>
    implements $RoomsDtoCopyWith<$Res> {
  _$RoomsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overall = null,
    Object? pricesAndOccupancy = null,
    Object? roomGroups = null,
  }) {
    return _then(_value.copyWith(
      overall: null == overall
          ? _value.overall
          : overall // ignore: cast_nullable_to_non_nullable
              as RoomsOverallDto,
      pricesAndOccupancy: null == pricesAndOccupancy
          ? _value.pricesAndOccupancy
          : pricesAndOccupancy // ignore: cast_nullable_to_non_nullable
              as List<RoomPricesAndOccupancyDto>,
      roomGroups: null == roomGroups
          ? _value.roomGroups
          : roomGroups // ignore: cast_nullable_to_non_nullable
              as List<RoomGroupDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomsOverallDtoCopyWith<$Res> get overall {
    return $RoomsOverallDtoCopyWith<$Res>(_value.overall, (value) {
      return _then(_value.copyWith(overall: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoomsDtoImplCopyWith<$Res>
    implements $RoomsDtoCopyWith<$Res> {
  factory _$$RoomsDtoImplCopyWith(
          _$RoomsDtoImpl value, $Res Function(_$RoomsDtoImpl) then) =
      __$$RoomsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RoomsOverallDto overall,
      List<RoomPricesAndOccupancyDto> pricesAndOccupancy,
      List<RoomGroupDto> roomGroups});

  @override
  $RoomsOverallDtoCopyWith<$Res> get overall;
}

/// @nodoc
class __$$RoomsDtoImplCopyWithImpl<$Res>
    extends _$RoomsDtoCopyWithImpl<$Res, _$RoomsDtoImpl>
    implements _$$RoomsDtoImplCopyWith<$Res> {
  __$$RoomsDtoImplCopyWithImpl(
      _$RoomsDtoImpl _value, $Res Function(_$RoomsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overall = null,
    Object? pricesAndOccupancy = null,
    Object? roomGroups = null,
  }) {
    return _then(_$RoomsDtoImpl(
      overall: null == overall
          ? _value.overall
          : overall // ignore: cast_nullable_to_non_nullable
              as RoomsOverallDto,
      pricesAndOccupancy: null == pricesAndOccupancy
          ? _value._pricesAndOccupancy
          : pricesAndOccupancy // ignore: cast_nullable_to_non_nullable
              as List<RoomPricesAndOccupancyDto>,
      roomGroups: null == roomGroups
          ? _value._roomGroups
          : roomGroups // ignore: cast_nullable_to_non_nullable
              as List<RoomGroupDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomsDtoImpl implements _RoomsDto {
  const _$RoomsDtoImpl(
      {required this.overall,
      required final List<RoomPricesAndOccupancyDto> pricesAndOccupancy,
      required final List<RoomGroupDto> roomGroups})
      : _pricesAndOccupancy = pricesAndOccupancy,
        _roomGroups = roomGroups;

  factory _$RoomsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomsDtoImplFromJson(json);

  @override
  final RoomsOverallDto overall;
  final List<RoomPricesAndOccupancyDto> _pricesAndOccupancy;
  @override
  List<RoomPricesAndOccupancyDto> get pricesAndOccupancy {
    if (_pricesAndOccupancy is EqualUnmodifiableListView)
      return _pricesAndOccupancy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pricesAndOccupancy);
  }

  final List<RoomGroupDto> _roomGroups;
  @override
  List<RoomGroupDto> get roomGroups {
    if (_roomGroups is EqualUnmodifiableListView) return _roomGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roomGroups);
  }

  @override
  String toString() {
    return 'RoomsDto(overall: $overall, pricesAndOccupancy: $pricesAndOccupancy, roomGroups: $roomGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomsDtoImpl &&
            (identical(other.overall, overall) || other.overall == overall) &&
            const DeepCollectionEquality()
                .equals(other._pricesAndOccupancy, _pricesAndOccupancy) &&
            const DeepCollectionEquality()
                .equals(other._roomGroups, _roomGroups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      overall,
      const DeepCollectionEquality().hash(_pricesAndOccupancy),
      const DeepCollectionEquality().hash(_roomGroups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomsDtoImplCopyWith<_$RoomsDtoImpl> get copyWith =>
      __$$RoomsDtoImplCopyWithImpl<_$RoomsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomsDtoImplToJson(
      this,
    );
  }
}

abstract class _RoomsDto implements RoomsDto {
  const factory _RoomsDto(
      {required final RoomsOverallDto overall,
      required final List<RoomPricesAndOccupancyDto> pricesAndOccupancy,
      required final List<RoomGroupDto> roomGroups}) = _$RoomsDtoImpl;

  factory _RoomsDto.fromJson(Map<String, dynamic> json) =
      _$RoomsDtoImpl.fromJson;

  @override
  RoomsOverallDto get overall;
  @override
  List<RoomPricesAndOccupancyDto> get pricesAndOccupancy;
  @override
  List<RoomGroupDto> get roomGroups;
  @override
  @JsonKey(ignore: true)
  _$$RoomsDtoImplCopyWith<_$RoomsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
