import 'package:flutter/material.dart';
import 'package:hotels/core/presentation/images/app_icons.dart';
import 'package:hotels/core/presentation/theme/app_colors_theme.dart';
import 'package:hotels/core/presentation/theme/spacing.dart';

class FavoriteIconButton extends StatefulWidget {
  const FavoriteIconButton({
    required this.isFavorite,
    required this.onTap,
    required this.colors,
    super.key,
  });

  final bool isFavorite;
  final VoidCallback onTap;
  final AppColorsTheme colors;

  @override
  State<FavoriteIconButton> createState() => _FavoriteIconButtonState();
}

class _FavoriteIconButtonState extends State<FavoriteIconButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    _scaleAnimation =
        Tween<double>(
          begin: 1,
          end: 1.2,
        ).animate(
          CurvedAnimation(
            parent: _controller,
            curve: Curves.easeInOut,
          ),
        );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _handleTap() async {
    await _controller.forward().then((_) async {
      await _controller.reverse();
    });
    widget.onTap();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: Padding(
              padding: const EdgeInsets.all(Spacing.single),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                transitionBuilder: (child, animation) {
                  return ScaleTransition(
                    scale: animation,
                    child: child,
                  );
                },
                child: AppIcons.favorite_button.getSvg(
                  key: ValueKey(widget.isFavorite),
                  width: 24,
                  height: 24,
                  color: widget.isFavorite
                      ? widget.colors.favoriteRed
                      : widget.colors.contentInversePrimary,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
