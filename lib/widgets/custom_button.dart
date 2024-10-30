import 'package:flutter/material.dart';

import 'text_widget.dart';

class ButtonWidget extends StatelessWidget {
  final double? radius;
  final double? height;
  final double? width;
  final String? buttontext;
  final Color? buttonTextColor;
  final Color? backgroundColor;
  final double? buttonTextSize;
  final FontWeight? buttonTextfontWeight;
  final VoidCallback? voidCallbackAction;

  const ButtonWidget({
    super.key,
    this.radius,
    this.height,
    this.width,
    this.buttontext,
    this.buttonTextColor,
    this.backgroundColor,
    this.buttonTextSize,
    this.buttonTextfontWeight,
    this.voidCallbackAction,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {
          // Call the callback function when the button is pressed
          if (voidCallbackAction != null) {
            voidCallbackAction!();
          }
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius!),
          ),
          backgroundColor: backgroundColor,
        ),
        child: TextWidget(
          fontSize: buttonTextSize,
          color: buttonTextColor,
          fontWeight: buttonTextfontWeight,
          text: buttontext.toString(),
        ),
      ),
    );
  }
}
