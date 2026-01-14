import 'package:flutter/material.dart';
import 'package:hotels/core/presentation/theme/spacing.dart';

class LoadingStateWidget extends StatelessWidget {
  const LoadingStateWidget({
    this.message,
    super.key,
  });

  final String? message;

  @override
  Widget build(BuildContext context) {
    final message = this.message;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          if (message != null) ...[
            const SizedBox(height: Spacing.double),
            Text(message),
          ],
        ],
      ),
    );
  }
}
