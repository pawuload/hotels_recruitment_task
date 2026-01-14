import 'package:flutter/material.dart';
import 'package:hotels/core/presentation/extension/context_extension.dart';
import 'package:hotels/core/presentation/images/app_icons.dart';
import 'package:hotels/core/presentation/theme/app_colors_theme.dart';
import 'package:hotels/core/presentation/theme/app_text_theme.dart';
import 'package:hotels/core/presentation/theme/spacing.dart';
import 'package:hotels/features/hotels/domain/entities/rating/rating_info.dart';

class HotelRatingBadge extends StatelessWidget {
  const HotelRatingBadge({
    required this.ratingInfo,
    this.textColor,
    super.key,
  });

  final RatingInfo ratingInfo;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final textTheme = context.appTextTheme;
    final effectiveTextColor = textColor ?? colors.contentInversePrimary;

    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: Spacing.single),
          padding: const EdgeInsets.symmetric(
            horizontal: Spacing.half,
            vertical: Spacing.half,
          ),
          decoration: BoxDecoration(
            color: colors.badgeGreen,
            borderRadius: BorderRadius.circular(4),
          ),
          child: _buildBadge(colors, textTheme),
        ),
        Text(
          ratingInfo.scoreDescription,
          style: textTheme.labelXSmallBold?.copyWith(
            color: effectiveTextColor,
          ),
        ),
        Text(
          ' (${ratingInfo.reviewsCount} Bew.)',
          style: textTheme.labelXSmallBold?.copyWith(
            color: effectiveTextColor,
          ),
        ),
      ],
    );
  }

  Widget _buildBadge(AppColorsTheme colors, AppTextTheme textTheme) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: Spacing.half,
      children: [
        AppIcons.smile.getSvg(
          width: 14,
          height: 14,
          color: colors.contentInversePrimary,
        ),
        Text(
          '${ratingInfo.score.toStringAsFixed(1)} / 5.0',
          style: textTheme.labelXSmallBold?.copyWith(
            color: colors.contentInversePrimary,
          ),
        ),
      ],
    );
  }
}
