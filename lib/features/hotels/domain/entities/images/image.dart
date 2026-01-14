import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';

@freezed
class Image with _$Image {
  const factory Image({
    required String? large,
    required String? small,
  }) = _Image;
}
