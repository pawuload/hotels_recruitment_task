import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotels/features/hotels/domain/entities/images/image.dart';

part 'image_dto.freezed.dart';
part 'image_dto.g.dart';

@freezed
class ImageDto with _$ImageDto {
  const factory ImageDto({
    required String? large,
    required String? small,
  }) = _ImageDto;

  factory ImageDto.fromJson(Map<String, dynamic> json) =>
      _$ImageDtoFromJson(json);
}

extension ImageDtoExtension on ImageDto {
  Image toEntity() => Image(
    large: large,
    small: small,
  );
}
