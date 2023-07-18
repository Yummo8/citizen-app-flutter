// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:red_squirrel/utils/constants/colors.dart';
import 'package:red_squirrel/utils/constants/fonts.dart';

class QuestionLabel extends StatefulWidget {
  final String question;

  const QuestionLabel({
    super.key,
    required this.question,
  });

  @override
  State<QuestionLabel> createState() => _QuestionLabelState();
}

class _QuestionLabelState extends State<QuestionLabel> {
  late String question;

  @override
  void initState() {
    super.initState();
    question = widget.question;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 26,
        left: 2,
        right: 2,
      ),
      padding: EdgeInsets.fromLTRB(20, 36, 20, 48),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0, // soften the shadow
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Center(
        child: Text(
          widget.question,
          textAlign: TextAlign.left,
          softWrap: true,
          overflow: TextOverflow.fade,
          style: const TextStyle(
            fontFamily: Fonts.primaryFont,
            color: ThemeColors.secondary,
            fontSize: 18,
            fontWeight: FontWeight.w500,
            height: 1.8,
            letterSpacing: 0.2,
          ),
        ),
      ),
    );
  }
}
