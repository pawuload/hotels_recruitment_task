import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels/features/hotels/domain/entities/best_offer/rooms/overall/rooms_overall.dart';

part 'rooms_overall_dto.freezed.dart';
part 'rooms_overall_dto.g.dart';

@freezed
class RoomsOverallDto with _$RoomsOverallDto {
  const factory RoomsOverallDto({
    // TODO: update when types are known
    required List<dynamic> attributes,
    required String boarding,
    required String name,
    required int adultCount,
    required List<dynamic> childrenAges,
    required int childrenCount,
    required int quantity,
    required bool sameBoarding,
    required bool sameRoomGroups,
  }) = _RoomsOverallDto;

  factory RoomsOverallDto.fromJson(Map<String, dynamic> json) =>
      _$RoomsOverallDtoFromJson(json);
}

extension RoomsOverallDtoExtension on RoomsOverallDto {
  RoomsOverall toEntity() => RoomsOverall(
    attributes: attributes.toIList(),
    boarding: boarding,
    name: name,
    adultCount: adultCount,
    childrenAges: childrenAges.toIList(),
    childrenCount: childrenCount,
    quantity: quantity,
    sameBoarding: sameBoarding,
    sameRoomGroups: sameRoomGroups,
  );
}
