import 'package:flutter/material.dart';
import 'package:hotels/core/presentation/theme/spacing.dart';
import 'package:hotels/l10n/l10n.dart';

class ErrorStateWidget extends StatelessWidget {
  const ErrorStateWidget({
    required this.message,
    this.onRetry,
    super.key,
  });

  final String message;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            size: 48,
            color: Colors.red,
          ),
          const SizedBox(height: Spacing.double),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Spacing.quadruple),
            child: Text(
              '${l10n.error}$message',
              style: const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
          ),
          if (onRetry != null) ...[
            const SizedBox(height: Spacing.double),
            ElevatedButton(
              onPressed: onRetry,
              child: Text(l10n.tryAgain),
            ),
          ],
        ],
      ),
    );
  }
}
