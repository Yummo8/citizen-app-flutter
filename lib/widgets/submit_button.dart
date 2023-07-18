// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:red_squirrel/utils/constants/colors.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final bool disabled;
  final Color backgroundColor;
  final Color foregroundColor;
  // final Function onPressed;

  const SubmitButton({
    super.key,
    // required this.onPressed,
    required this.text,
    this.disabled = false,
    this.backgroundColor = Colors.white,
    this.foregroundColor = ThemeColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      side: BorderSide(
        color: foregroundColor,
        width: 2,
        style: BorderStyle.solid,
      ),
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24))),
    );
    return Container(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        child: ElevatedButton(
            style: buttonStyle,
            onPressed: (!disabled
                ? () {
                    // onPressed();
                  }
                : null),
            child: Text(
              text,
              textAlign: TextAlign.center,
            )));
  }
}
