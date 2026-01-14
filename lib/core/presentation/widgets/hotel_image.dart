import 'package:flutter/material.dart';
import 'package:hotels/core/presentation/extension/context_extension.dart';
import 'package:hotels/core/presentation/theme/app_colors_theme.dart';
import 'package:hotels/features/hotels/domain/entities/images/image.dart'
    as hotel_image;

class HotelImage extends StatelessWidget {
  const HotelImage({
    required this.image,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    super.key,
  });

  final hotel_image.Image? image;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius;
    final colors = context.appColors;
    final imageUrl = image?.large ?? image?.small;

    var imageWidget = imageUrl != null
        ? Image.network(
            imageUrl,
            width: width,
            height: height,
            fit: fit,
            errorBuilder: (context, error, stackTrace) {
              return _buildPlaceholder(colors);
            },
          )
        : _buildPlaceholder(colors);

    if (borderRadius != null) {
      imageWidget = ClipRRect(
        borderRadius: borderRadius,
        child: imageWidget,
      );
    }

    return imageWidget;
  }

  Widget _buildPlaceholder(AppColorsTheme colors) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 200,
      color: Colors.grey[300],
      child: Icon(
        Icons.hotel,
        size: 48,
        color: colors.textGray,
      ),
    );
  }
}
