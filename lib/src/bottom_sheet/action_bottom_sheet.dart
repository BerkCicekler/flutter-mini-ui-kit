import 'package:flutter/material.dart';
import 'package:widgets/buttons.dart';
import 'package:widgets/src/bottom_sheet/default_container.dart';

class CustomActionBottomSheet extends StatelessWidget {
  const CustomActionBottomSheet({
    required this.title,
    required this.contextText,
    required this.acceptButtonText,
    required this.denyButtonText,
    super.key,
  });

  final String title;
  final String contextText;

  final String acceptButtonText;
  final String denyButtonText;

  @override
  Widget build(BuildContext context) {
    return CustomDefaultBottomSheetContainer(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0XFFFF4500),
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              contextText,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              label: acceptButtonText,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomGreyButton(
              onPress: () {
                Navigator.pop(context, false);
              },
              label: denyButtonText,
            ),
          ],
        ),
      ],
    ));
  }
}
