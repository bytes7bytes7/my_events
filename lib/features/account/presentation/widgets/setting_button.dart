import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../themes/extensions/extensions.dart';

class SettingButton extends StatelessWidget {
  const SettingButton({
    super.key,
    required this.iconPath,
    required this.title,
    required this.onPressed,
  });

  final String iconPath;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemeTX = theme.extension<ColorSchemeTX>()!;

    return Card(
      margin: const EdgeInsets.symmetric(
        vertical: 4,
      ),
      elevation: 0,
      clipBehavior: Clip.hardEdge,
      color: theme.colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: theme.colorScheme.background,
        ),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 12,
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                iconPath,
                colorFilter: ColorFilter.mode(
                  theme.colorScheme.primary,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: theme.textTheme.bodyMedium,
              ),
              const Spacer(),
              Assets.icons.chevronNext.svg(
                colorFilter: ColorFilter.mode(
                  colorSchemeTX.chevron,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
