// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Rooms {
  RoomsOverall get overall => throw _privateConstructorUsedError;
  IList<RoomPricesAndOccupancy> get pricesAndOccupancy =>
      throw _privateConstructorUsedError;
  IList<RoomGroup> get roomGroups => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomsCopyWith<Rooms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsCopyWith<$Res> {
  factory $RoomsCopyWith(Rooms value, $Res Function(Rooms) then) =
      _$RoomsCopyWithImpl<$Res, Rooms>;
  @useResult
  $Res call(
      {RoomsOverall overall,
      IList<RoomPricesAndOccupancy> pricesAndOccupancy,
      IList<RoomGroup> roomGroups});

  $RoomsOverallCopyWith<$Res> get overall;
}

/// @nodoc
class _$RoomsCopyWithImpl<$Res, $Val extends Rooms>
    implements $RoomsCopyWith<$Res> {
  _$RoomsCopyWithImpl(this._value, this._then);

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
              as RoomsOverall,
      pricesAndOccupancy: null == pricesAndOccupancy
          ? _value.pricesAndOccupancy
          : pricesAndOccupancy // ignore: cast_nullable_to_non_nullable
              as IList<RoomPricesAndOccupancy>,
      roomGroups: null == roomGroups
          ? _value.roomGroups
          : roomGroups // ignore: cast_nullable_to_non_nullable
              as IList<RoomGroup>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomsOverallCopyWith<$Res> get overall {
    return $RoomsOverallCopyWith<$Res>(_value.overall, (value) {
      return _then(_value.copyWith(overall: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoomsImplCopyWith<$Res> implements $RoomsCopyWith<$Res> {
  factory _$$RoomsImplCopyWith(
          _$RoomsImpl value, $Res Function(_$RoomsImpl) then) =
      __$$RoomsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RoomsOverall overall,
      IList<RoomPricesAndOccupancy> pricesAndOccupancy,
      IList<RoomGroup> roomGroups});

  @override
  $RoomsOverallCopyWith<$Res> get overall;
}

/// @nodoc
class __$$RoomsImplCopyWithImpl<$Res>
    extends _$RoomsCopyWithImpl<$Res, _$RoomsImpl>
    implements _$$RoomsImplCopyWith<$Res> {
  __$$RoomsImplCopyWithImpl(
      _$RoomsImpl _value, $Res Function(_$RoomsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? overall = null,
    Object? pricesAndOccupancy = null,
    Object? roomGroups = null,
  }) {
    return _then(_$RoomsImpl(
      overall: null == overall
          ? _value.overall
          : overall // ignore: cast_nullable_to_non_nullable
              as RoomsOverall,
      pricesAndOccupancy: null == pricesAndOccupancy
          ? _value.pricesAndOccupancy
          : pricesAndOccupancy // ignore: cast_nullable_to_non_nullable
              as IList<RoomPricesAndOccupancy>,
      roomGroups: null == roomGroups
          ? _value.roomGroups
          : roomGroups // ignore: cast_nullable_to_non_nullable
              as IList<RoomGroup>,
    ));
  }
}

/// @nodoc

class _$RoomsImpl implements _Rooms {
  const _$RoomsImpl(
      {required this.overall,
      required this.pricesAndOccupancy,
      required this.roomGroups});

  @override
  final RoomsOverall overall;
  @override
  final IList<RoomPricesAndOccupancy> pricesAndOccupancy;
  @override
  final IList<RoomGroup> roomGroups;

  @override
  String toString() {
    return 'Rooms(overall: $overall, pricesAndOccupancy: $pricesAndOccupancy, roomGroups: $roomGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomsImpl &&
            (identical(other.overall, overall) || other.overall == overall) &&
            const DeepCollectionEquality()
                .equals(other.pricesAndOccupancy, pricesAndOccupancy) &&
            const DeepCollectionEquality()
                .equals(other.roomGroups, roomGroups));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      overall,
      const DeepCollectionEquality().hash(pricesAndOccupancy),
      const DeepCollectionEquality().hash(roomGroups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomsImplCopyWith<_$RoomsImpl> get copyWith =>
      __$$RoomsImplCopyWithImpl<_$RoomsImpl>(this, _$identity);
}

abstract class _Rooms implements Rooms {
  const factory _Rooms(
      {required final RoomsOverall overall,
      required final IList<RoomPricesAndOccupancy> pricesAndOccupancy,
      required final IList<RoomGroup> roomGroups}) = _$RoomsImpl;

  @override
  RoomsOverall get overall;
  @override
  IList<RoomPricesAndOccupancy> get pricesAndOccupancy;
  @override
  IList<RoomGroup> get roomGroups;
  @override
  @JsonKey(ignore: true)
  _$$RoomsImplCopyWith<_$RoomsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
