import 'package:flutter/material.dart';
import 'package:pawly/utils/constants/colors.dart';

class SuraButtonWidget extends StatelessWidget {
  const SuraButtonWidget({
    super.key,
    required this.onPressed,
    this.text = 'Continue',
    this.backgroundColor = AppColors.blue,
    this.textColor = Colors.white,
    this.child,
  });

  final VoidCallback? onPressed;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor: backgroundColor,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        side: BorderSide.none,
        shadowColor: Colors.transparent,
      ),
      child: child ?? Text(text, style: TextStyle(color: textColor)),
    );
  }
}
