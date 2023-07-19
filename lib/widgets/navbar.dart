// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:red_squirrel/utils/constants/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:red_squirrel/utils/constants/resources.dart';

import 'dart:math';

class NavBar extends StatefulWidget {
  final Color backgroundColor;
  final Color foregroundColor;

  const NavBar({
    super.key,
    this.backgroundColor = ThemeColors.secondary,
    this.foregroundColor = ThemeColors.progressBarColor,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 43,
        color: ThemeColors.secondary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Transform.rotate(
              angle: 180 * pi / 180,
              child: SizedBox(
                child: IconButton(
                  padding: const EdgeInsets.all(0.0),
                  icon: const Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () {
                    // Handle previous button press
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 4.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color:
                      widget.backgroundColor, // Customize the border color here
                  width: 2.0, // Customize the border width here
                ),
                shape: BoxShape
                    .circle, // Set the shape to circle for a rounded border
              ),
              child: IconButton(
                padding: const EdgeInsets.all(0.0),
                icon: SvgPicture.asset(
                  SvgIcons.vector,
                  width: 36,
                  height: 36,
                ),
                onPressed: () {
                  // Handle previous button press
                },
              ),
            ),
            SizedBox(
              child: IconButton(
                padding: const EdgeInsets.all(0.0),
                icon: const Icon(Icons.refresh, color: Colors.white, size: 30),
                onPressed: () {
                  // Handle previous button press
                },
              ),
            ),
          ],
        ));
  }
}
