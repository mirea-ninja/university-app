import 'package:enough_platform_widgets/enough_platform_widgets.dart';
import 'package:flutter/material.dart';
import 'package:rtu_mirea_app/presentation/theme.dart';
import 'package:rtu_mirea_app/presentation/typography.dart';

class ColorfulButton extends StatelessWidget {
  const ColorfulButton({super.key, required this.text, required this.onClick, required this.backgroundColor});

  final String text;
  final Color backgroundColor;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: PlatformTextButton(
        onPressed: () {
          onClick();
        },
        material: (_, __) => MaterialTextButtonData(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            backgroundColor: backgroundColor,
          ),
        ),
        cupertino: (_, __) => CupertinoTextButtonData(
          padding: EdgeInsets.zero,
          borderRadius: BorderRadius.circular(12.0),
          color: backgroundColor,
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyle.buttonL.copyWith(
              color: AppTheme.colorsOf(context).active,
            ),
          ),
        ),
      ),
    );
  }
}
