import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rooms_overall.freezed.dart';

@freezed
class RoomsOverall with _$RoomsOverall {
  const factory RoomsOverall({
    // TODO: update when types are known
    required IList<dynamic> attributes,
    required String boarding,
    required String name,
    required int adultCount,
    required IList<dynamic> childrenAges,
    required int childrenCount,
    required int quantity,
    required bool sameBoarding,
    required bool sameRoomGroups,
  }) = _RoomsOverall;
}
