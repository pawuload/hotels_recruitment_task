import 'package:flutter/material.dart';
import 'package:hotels/core/presentation/widgets/custom_app_bar.dart';
import 'package:hotels/l10n/l10n.dart';

class OverviewPageView extends StatelessWidget {
  const OverviewPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    
    return Scaffold(
      appBar: CustomAppBar(
        title: l10n.overview,
      ),
      body: Center(
        child: Text(l10n.overview),
      ),
    );
  }
}
