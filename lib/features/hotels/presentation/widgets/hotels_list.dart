import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:hotels/core/presentation/extension/context_extension.dart';
import 'package:hotels/core/presentation/extension/num_extension.dart';
import 'package:hotels/core/presentation/theme/spacing.dart';
import 'package:hotels/core/presentation/widgets/empty_state_widget.dart';
import 'package:hotels/features/hotels/domain/entities/hotel/hotel.dart';
import 'package:hotels/features/hotels/presentation/widgets/widgets.dart';

class HotelsList extends StatelessWidget {
  const HotelsList({
    required this.hotels,
    required this.hotelCount,
    super.key,
  });

  final IList<Hotel> hotels;
  final int hotelCount;

  @override
  Widget build(BuildContext context) {
    if (hotels.isEmpty) {
      return const EmptyStateWidget(
        message: 'Keine Hotels verfügbar',
      );
    }

    final textTheme = context.appTextTheme;

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              left: Spacing.double,
              top: Spacing.double,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '${hotelCount.toStringWithCommas()} Hotels für Mallorca',
                style: textTheme.headlineMedium,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, index) {
              final hotel = hotels[index];
              return HotelListItem(
                hotel: hotel,
                showTravelDetails: true,
              );
            },
            childCount: hotels.length,
          ),
        ),
      ],
    );
  }
}
