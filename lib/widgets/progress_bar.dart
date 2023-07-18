// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:red_squirrel/utils/constants/colors.dart';
import 'package:red_squirrel/utils/constants/fonts.dart';

import 'dart:math';

class ProgressBar extends StatefulWidget {
  final int count;
  final Color backgroundColor;
  final Color foregroundColor;

  const ProgressBar({
    super.key,
    required this.count,
    this.backgroundColor = ThemeColors.secondary,
    this.foregroundColor = ThemeColors.progressBarColor,
  });

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  late int count;
  int step = 1;

  @override
  void initState() {
    super.initState();
    count = widget.count;
  }

  void next() {
    setState(() {
      if (step < count) step += 1;
    });
  }

  void previous() {
    setState(() {
      if (step > 1) step -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform.rotate(
              angle: 180 * pi / 180,
              child: SizedBox(
                child: IconButton(
                  padding: const EdgeInsets.all(0.0),
                  icon: Icon(Icons.forward_rounded,
                      color: step == 1
                          ? widget.foregroundColor
                          : widget.backgroundColor,
                      size: 32.0),
                  onPressed: () {
                    previous();
                    // Handle previous button press
                  },
                ),
              ),
            ),
            Text(
              '$step / $count',
              style: TextStyle(
                  fontFamily: Fonts.primaryFont,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  color: widget.backgroundColor),
            ),
            SizedBox(
              child: IconButton(
                padding: const EdgeInsets.all(5.0),
                icon: Icon(Icons.forward_rounded,
                    color: step == count
                        ? widget.foregroundColor
                        : widget.backgroundColor,
                    size: 32.0),
                onPressed: () {
                  next();
                  // Handle next button press
                },
              ),
            ),
          ],
        ),
        GFProgressBar(
          percentage: step / count * 1.0,
          lineHeight: 8,
          backgroundColor: widget.foregroundColor,
          progressBarColor: widget.backgroundColor,
          animation: true,
          animationDuration: 160,
          animateFromLastPercentage: true,
        ),
      ],
    );
  }
}
