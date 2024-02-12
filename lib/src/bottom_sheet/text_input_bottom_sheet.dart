import 'package:flutter/material.dart';
import 'package:widgets/src/bottom_sheet/default_container.dart';
import 'package:widgets/src/buttons/custom_button.dart';

class CustomTextInputBottomSheet extends StatefulWidget {
  /// This is a bottom sheet for getting a text input from the user
  /// [hintText] hint of the text field
  const CustomTextInputBottomSheet({
    required this.title,
    required this.contextText,
    required this.hintText,
    required this.buttonText,
    this.keyboardType = TextInputType.text,
    super.key,
  });

  final String title;
  final String contextText;

  final String hintText;
  final String buttonText;

  final TextInputType keyboardType;

  @override
  State<CustomTextInputBottomSheet> createState() =>
      _CustomTextInputBottomSheetState();
}

class _CustomTextInputBottomSheetState
    extends State<CustomTextInputBottomSheet> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _onTap() {
    Navigator.pop(context, _controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return CustomDefaultBottomSheetContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.title,
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
            widget.contextText,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(6),
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0XFFF6F6F6),
              border: Border.all(
                color: const Color(0XFFD7D7D7),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Flexible(
                  flex: 4,
                  child: TextField(
                    keyboardType: widget.keyboardType,
                    controller: _controller,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: InputBorder.none,
                      hintText: widget.hintText,
                    ),
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: CustomButton(
                    label: widget.buttonText,
                    onPressed: _onTap,
                    borderRadius: 5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
