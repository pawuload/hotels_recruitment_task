import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotels/features/account/presentation/view/account_page_view.dart';

@RoutePage()
class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AccountPageView();
  }
}
