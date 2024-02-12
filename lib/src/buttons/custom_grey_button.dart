import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomGreyButton extends StatelessWidget {
  const CustomGreyButton({
    required this.onPress,
    super.key,
    required this.label,
    this.borderRadius = 20,
  });

  final void Function()? onPress;

  final String label;

  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final buttonWidth = MediaQuery.of(context).size.width * 0.85;
    final buttonHeigh = MediaQuery.of(context).size.width * 0.15;
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(buttonWidth, buttonHeigh),
        elevation: 0.0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        foregroundColor: Colors.white,
        side: const BorderSide(
          color: Color(0XFFD7D7D7),
          width: 2,
        ),
        backgroundColor: const Color(0XFFF6F6F6),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
