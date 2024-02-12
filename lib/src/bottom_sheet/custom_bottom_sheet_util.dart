import 'package:flutter/material.dart';
import 'package:widgets/src/bottom_sheet/action_bottom_sheet.dart';
import 'package:widgets/src/bottom_sheet/information_bottom_sheet.dart';
import 'package:widgets/src/bottom_sheet/text_input_bottom_sheet.dart';

class CustomBottomSheetUtil {
  CustomBottomSheetUtil._();

  /// to give information inside a bottom sheet
  static void showInformationBottomSheet({
    required BuildContext context,
    required String title,
    required String contextText,
    required String buttonText,
    bool forceInput = false,
  }) {
    showModalBottomSheet<void>(
      context: context,
      isDismissible: !forceInput,
      enableDrag: !forceInput,
      builder: (BuildContext context) {
        return CustomInformationBottomSheet(
          title: title,
          contextText: contextText,
          buttonText: buttonText,
        );
      },
    );
  }

  /// This bottom sheet will have 2 buttons
  /// first one for accept the action will return true
  /// second one is for deny the action will return false
  /// and least if the user don't do anything will return null
  static Future<bool?> showActionBottomSheet({
    required BuildContext context,
    required String title,
    required String contextText,
    required String acceptButtonText,
    required String denyButtonText,
  }) async {
    return showModalBottomSheet<bool?>(
      context: context,
      builder: (BuildContext context) {
        return CustomActionBottomSheet(
          title: title,
          contextText: contextText,
          acceptButtonText: acceptButtonText,
          denyButtonText: denyButtonText,
        );
      },
    );
  }

  static Future<String?> showTextInputBottomSheet({
    required BuildContext context,
    required String title,
    required String contextText,
    required String hintText,
    required String buttonText,
    TextInputType keyboardType = TextInputType.text,
  }) async {
    return showModalBottomSheet<String?>(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom + 15,
          ),
          child: CustomTextInputBottomSheet(
            hintText: hintText,
            buttonText: buttonText,
            title: title,
            contextText: contextText,
            keyboardType: keyboardType,
          ),
        );
      },
    );
  }
}
