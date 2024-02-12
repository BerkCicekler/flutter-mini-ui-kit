import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    required this.onPressed,
    required this.label,
    super.key,
  });

  final String label;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final buttonWidth = MediaQuery.of(context).size.width * 0.85;
    final buttonHeigh = MediaQuery.of(context).size.width * 0.15;
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color(0XFFFF4500),
        side: const BorderSide(color: Color(0XFFFF4500), width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        minimumSize: Size(buttonWidth, buttonHeigh),
        padding: const EdgeInsets.only(
          top: 6,
          bottom: 6,
          left: 7,
          right: 7,
        ),
        textStyle: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
      ),
      child: Text(label),
    );
  }
}
