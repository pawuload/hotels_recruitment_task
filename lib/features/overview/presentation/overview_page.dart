import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotels/features/overview/presentation/view/overview_page_view.dart';

@RoutePage()
class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OverviewPageView();
  }
}
