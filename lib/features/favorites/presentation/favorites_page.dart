import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels/features/favorites/presentation/view/favorites_page_view.dart';
import 'package:hotels/features/hotels/data/data_sources/api/hotels_api.dart';
import 'package:hotels/features/hotels/data/repositories/api_hotels_repository.dart';
import 'package:hotels/features/hotels/presentation/cubit/hotels_cubit.dart';
import 'package:http/http.dart' as http;

@RoutePage()
class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final hotelsApi = HotelsApi(client: http.Client());
        final hotelsRepository = ApiHotelsRepository(hotelsApi: hotelsApi);
        final cubit = HotelsCubit(hotelsRepository: hotelsRepository);
        unawaited(cubit.fetchHotels());
        return cubit;
      },
      child: const FavoritesPageView(),
    );
  }
}
