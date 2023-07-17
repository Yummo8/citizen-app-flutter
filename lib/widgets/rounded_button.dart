// ignore_for_file: file_names

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final bool disabled;
  final bool outlined;
  final Color backgroundColor;
  final Color foregroundColor;
  final Function onPressed;

  const RoundedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.disabled = false,
    this.outlined = false,
    this.backgroundColor = Colors.white,
    this.foregroundColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      side: outlined
          ? BorderSide(
              color: foregroundColor,
              width: 2,
              style: BorderStyle.solid,
            )
          : const BorderSide(
              color: Colors.transparent,
              width: 2,
            ),
      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24))),
    );
    return OutlinedButton(
      style: buttonStyle,
      onPressed: (!disabled
          ? () {
              onPressed();
            }
          : null),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center, children: [Text(text)]),
    );
  }
}
