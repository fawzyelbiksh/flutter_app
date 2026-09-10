import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? horizontalPadding;
  final double? verticalPadding;
  final Color? backgroundColor;
  final double? borderRadius;
  final String textButton;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  final double? buttonWidth;
  final double? buttonHeight;

  const AppTextButton({
    super.key,
    this.horizontalPadding,
    this.verticalPadding,
    this.backgroundColor,
    this.borderRadius,
    required this.textButton,
    required this.textStyle,
    required this.onPressed,
    this.buttonWidth,
    this.buttonHeight,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,

      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 14.h,
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(buttonWidth?.w ?? double.maxFinite, buttonHeight?.h ?? 50.h),
        ),
        backgroundColor: WidgetStateProperty.all(
          backgroundColor ?? Colors.blue,
        ),

        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16),
          ),
        ),
      ),
      child: Text(textButton, style: textStyle),
    );
  }
}
