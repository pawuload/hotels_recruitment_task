import 'package:flutter/material.dart';
import 'package:hotels/core/presentation/extension/context_extension.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    required this.title,
    this.actions,
    super.key,
  });

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final textTheme = context.appTextTheme;

    return AppBar(
      title: Text(
        title,
        style: textTheme.headlineSmall?.copyWith(
          color: colors.contentInversePrimary,
        ),
      ),
      centerTitle: true,
      backgroundColor: colors.primary,
      foregroundColor: colors.contentInversePrimary,
      elevation: 0,
      toolbarHeight: 56,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
