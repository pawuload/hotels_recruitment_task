import 'package:flutter/material.dart';
import 'package:hotels/core/presentation/extension/context_extension.dart';
import 'package:hotels/features/hotels/domain/entities/hotel/hotel.dart';
import 'package:hotels/features/hotels/presentation/hotel_details_page.dart';
import 'package:hotels/l10n/l10n.dart';

class HotelActionButton extends StatelessWidget {
  const HotelActionButton({
    required this.hotel,
    required this.showTravelDetails,
    this.heroContext = 'list',
    super.key,
  });

  final Hotel hotel;
  final bool showTravelDetails;
  final String heroContext;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final textTheme = context.appTextTheme;
    final l10n = context.l10n;

    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: () async {
          await Navigator.of(context).push<void>(
            MaterialPageRoute<void>(
              builder: (context) => HotelDetailsPage(
                hotel: hotel,
                heroContext: heroContext,
              ),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.buttonOrange,
          foregroundColor: colors.contentInversePrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          elevation: 0,
        ),
        child: Text(
          showTravelDetails ? l10n.toOffers : l10n.toHotel,
          style: textTheme.labelSmallBold?.copyWith(
            color: colors.contentInversePrimary,
          ),
        ),
      ),
    );
  }
}
