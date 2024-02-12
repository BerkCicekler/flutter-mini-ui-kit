import 'package:flutter/material.dart';
import 'package:widgets/src/bottom_sheet/default_container.dart';
import 'package:widgets/src/buttons/custom_button.dart';

class CustomInformationBottomSheet extends StatelessWidget {
  /// This is a bottom sheet design for giving information to user
  const CustomInformationBottomSheet({
    required this.title,
    required this.contextText,
    required this.buttonText,
    super.key,
  });

  final String title;
  final String contextText;

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return CustomDefaultBottomSheetContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0XFFFF4500),
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            contextText,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
            onPressed: () {
              Navigator.pop(context);
            },
            label: buttonText,
          ),
        ],
      ),
    );
  }
}
