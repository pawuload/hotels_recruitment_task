import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_group.freezed.dart';

@freezed
class RoomGroup with _$RoomGroup {
  const factory RoomGroup({
    // TODO: update when types are known
    required IList<dynamic> attributes,
    required String boarding,
    required String name,
    required String? detailedDescription,
    required String groupIdentifier,
    required int quantity,
  }) = _RoomGroup;
}
