import 'package:flutter/material.dart';
import 'package:hotels/core/presentation/extension/context_extension.dart';
import 'package:hotels/core/presentation/theme/app_colors_theme.dart';
import 'package:hotels/core/presentation/theme/spacing.dart';
import 'package:hotels/features/hotels/domain/entities/hotel/hotel.dart';
import 'package:hotels/features/hotels/presentation/widgets/widgets.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({
    required this.hotel,
    required this.isFavorite,
    required this.onFavoriteToggle,
    this.showTravelDetails = false,
    this.heroContext = 'list',
    super.key,
  });

  final Hotel hotel;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;
  final bool showTravelDetails;
  final String heroContext;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final textTheme = context.appTextTheme;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: Spacing.double,
        vertical: Spacing.singleHalf,
      ),
      decoration: _buildDecoration(colors),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HotelImageSection(
            hotel: hotel,
            isFavorite: isFavorite,
            onFavoriteToggle: onFavoriteToggle,
            showRatingBadge: !showTravelDetails,
            heroContext: heroContext,
          ),
          Padding(
            padding: const EdgeInsets.all(Spacing.double),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: Spacing.half,
                  children: [
                    HotelRatingSection(category: hotel.category),
                    Text(
                      hotel.name,
                      style: textTheme.labelMedium,
                    ),
                    Text(
                      hotel.destination,
                      style: textTheme.labelSmall,
                    ),
                  ],
                ),
                Divider(
                  height: Spacing.quadruple,
                  color: colors.borderSecondary,
                ),
                if (showTravelDetails)
                  Padding(
                    padding: const EdgeInsets.only(bottom: Spacing.double),
                    child: HotelTravelDetailsSection(
                      bestOffer: hotel.bestOffer,
                    ),
                  ),
                HotelActionButton(
                  hotel: hotel,
                  showTravelDetails: showTravelDetails,
                  heroContext: heroContext,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration _buildDecoration(AppColorsTheme colors) {
    return BoxDecoration(
      color: colors.contentInversePrimary,
      borderRadius: BorderRadius.circular(5),
      boxShadow: const [
        BoxShadow(
          color: Color(0x1A000000),
          blurRadius: 24,
          offset: Offset(0, 8),
        ),
        BoxShadow(
          color: Color(0x14000000),
          blurRadius: 24,
        ),
      ],
    );
  }
}
