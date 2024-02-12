import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onPressed,
    super.key,
    required this.label,
    this.icon,
    this.loadingMode = false,
    this.borderRadius = 20,
  });

  final void Function()? onPressed;

  final String label;

  final Widget? icon;

  final bool loadingMode;

  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final buttonWidth = MediaQuery.of(context).size.width * 0.85;
    final buttonHeigh = MediaQuery.of(context).size.width * 0.15;
    return ElevatedButton.icon(
      onPressed: loadingMode ? null : onPressed,
      label: loadingMode ? const CupertinoActivityIndicator() : Text(label),
      icon: icon ?? const SizedBox(),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(buttonWidth, buttonHeigh),
        elevation: 0.0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        foregroundColor: Colors.white,
        disabledBackgroundColor: const Color(0XFFF6F6F6),
        disabledForegroundColor: const Color(0XFFBBBBBB),
        textStyle: const TextStyle(
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w800,
        ),
        backgroundColor: const Color(0XFFFF4500),
      ),
    );
  }
}
