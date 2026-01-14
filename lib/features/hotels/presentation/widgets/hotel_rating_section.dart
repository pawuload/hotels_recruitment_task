import 'package:flutter/material.dart';
import 'package:hotels/core/presentation/extension/context_extension.dart';
import 'package:hotels/core/presentation/images/app_icons.dart';
import 'package:hotels/core/presentation/theme/spacing.dart';
import 'package:info_popup/info_popup.dart';

class HotelRatingSection extends StatelessWidget {
  const HotelRatingSection({
    required this.category,
    super.key,
  });

  final int category;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Row(
      children: [
        ...List.generate(5, (index) {
          final isFilled = index < category;
          return AppIcons.hotel_star.getSvg(
            width: 16,
            height: 16,
            color: isFilled ? colors.textDark : Colors.grey[300],
          );
        }),
        const SizedBox(width: Spacing.half),
        InfoPopupWidget(
          contentTitle:
              'Je mehr Sterne, desto höher ist die Ausstattung und der Service.',
          child: AppIcons.help_button.getSvg(
            width: 16,
            height: 16,
            color: colors.textGray,
          ),
        ),
      ],
    );
  }
}
