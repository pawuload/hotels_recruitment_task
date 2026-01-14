import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:hotels/features/hotels/domain/entities/hotel/hotel.dart';
import 'package:hotels/features/hotels/presentation/widgets/hotel_list_item.dart';

class FavoritesList extends StatelessWidget {
  const FavoritesList({required this.hotels, super.key});

  final IList<Hotel> hotels;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: hotels.length,
      itemBuilder: (context, index) {
        final hotel = hotels[index];
        return HotelListItem(
          hotel: hotel,
          heroContext: 'favorites',
        );
      },
    );
  }
}
