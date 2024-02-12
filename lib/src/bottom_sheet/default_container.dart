import 'package:flutter/material.dart';

class CustomDefaultBottomSheetContainer extends StatelessWidget {
  /// This is the base design of the all bottom sheets
  const CustomDefaultBottomSheetContainer({
    required this.child,
    super.key,
  });

  /// The widget will show inside the bottom sheet
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      width: width,
      child: SafeArea(child: child),
    );
  }
}
