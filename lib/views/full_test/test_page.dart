// ignore_for_file: library_private_types_in_public_api

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

import 'dart:math';
import 'package:red_squirrel/utils/constants/colors.dart';
import 'package:red_squirrel/utils/constants/fonts.dart';
import 'package:red_squirrel/utils/constants/strings.dart';
import 'package:red_squirrel/widgets/Rounded_button.dart';
import 'package:red_squirrel/utils/constants/resources.dart';

class FullTestPage extends StatefulWidget {
  const FullTestPage({
    super.key,
  });

  static Page<void> page() => const MaterialPage<void>(child: FullTestPage());

  @override
  _FullTestPage createState() => _FullTestPage();
}

class _FullTestPage extends State<FullTestPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
        flex: 380,
        child: Stack(children: [
          Container(
            width: double.infinity,
            height: 135,
            color: Theme.of(context).colorScheme.primary,
            alignment: Alignment.center,
            child: Center(
              child: Text(
                Strings.fullTestCaption.toUpperCase(),
                style: const TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 105,
            left: 0,
            right: 0,
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  color: Theme.of(context).colorScheme.background),
            ),
          ),
          Positioned(
              right: 10,
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.26,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: ThemeColors.counterColor),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.alarm_sharp,
                      color: Colors.white,
                    ),
                    Text(
                      '00:00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              )),
        ]),
      ),
      Expanded(
          flex: 1760,
          child: Stack(
            children: [
              Container(
                color: Theme.of(context).colorScheme.background,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Transform.rotate(
                                angle: 180 * pi / 180,
                                child: SizedBox(
                                  child: IconButton(
                                    padding: const EdgeInsets.all(0.0),
                                    icon: Icon(Icons.forward,
                                        color: ThemeColors.progressBarColor
                                            .withAlpha(50),
                                        size: 32.0),
                                    onPressed: () {
                                      // Handle previous button press
                                    },
                                  ),
                                ),
                              ),
                              const Text(
                                '1 / 24',
                                style: TextStyle(
                                    fontFamily: Fonts.primaryFont,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                    color: ThemeColors.progressBarColor),
                              ),
                              SizedBox(
                                child: IconButton(
                                  padding: const EdgeInsets.all(0.0),
                                  icon: const Icon(Icons.forward,
                                      color: ThemeColors.progressBarColor,
                                      size: 32.0),
                                  onPressed: () {
                                    // Handle previous button press
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          GFProgressBar(
                            percentage: 0.6,
                            lineHeight: 9,
                            backgroundColor:
                                ThemeColors.progressBarColor.withAlpha(50),
                            progressBarColor: ThemeColors.progressBarColor,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 40,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 30,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(9),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5.0, // soften the shadow
                                    spreadRadius: 1.0,
                                  )
                                ],
                              ),
                              child: const Center(
                                child: Text(
                                  'Who was the first person to sail single-handed around the world?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: Fonts.primaryFont,
                                    color: ThemeColors.progressBarColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 70,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5.0, // soften the shadow
                                        spreadRadius: 1.0,
                                      )
                                    ],
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Sr. Francis Drake',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Fonts.primaryFont,
                                        color: ThemeColors.progressBarColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5.0, // soften the shadow
                                        spreadRadius: 1.0,
                                      )
                                    ],
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Sr. Francis Walsingham',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Fonts.primaryFont,
                                        color: ThemeColors.progressBarColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5.0, // soften the shadow
                                        spreadRadius: 1.0,
                                      )
                                    ],
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Sr. Francis Chichester',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Fonts.primaryFont,
                                        color: ThemeColors.progressBarColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5.0, // soften the shadow
                                        spreadRadius: 1.0,
                                      )
                                    ],
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Sr. Robin Knox-Johnston',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: Fonts.primaryFont,
                                        color: ThemeColors.progressBarColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                RoundedButton(
                                    onPressed: () {},
                                    text: Strings.submitButton,
                                    outlined: true,
                                    foregroundColor: Theme.of(context)
                                        .colorScheme
                                        .secondary),
                                SizedBox(
                                  height: 5,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: -50,
                  right: 10,
                  width: 280,
                  child: Image.asset(
                    Images.bridge,
                    fit: BoxFit.scaleDown,
                  ))
            ],
          )),
      Expanded(
        flex: 120,
        child: Container(
          color: Theme.of(context).colorScheme.secondary,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Transform.rotate(
                angle: 180 * pi / 180,
                child: SizedBox(
                  child: IconButton(
                    padding: const EdgeInsets.all(0.0),
                    icon: Icon(Icons.arrow_forward,
                        color: ThemeColors.progressBarColor.withAlpha(50),
                        size: 32.0),
                    onPressed: () {
                      // Handle previous button press
                    },
                  ),
                ),
              ),
              const Text(
                '1 / 24',
                style: TextStyle(
                    fontFamily: Fonts.primaryFont,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: ThemeColors.progressBarColor),
              ),
              SizedBox(
                child: IconButton(
                  padding: const EdgeInsets.all(0.0),
                  icon: const Icon(Icons.forward,
                      color: ThemeColors.progressBarColor, size: 32.0),
                  onPressed: () {
                    // Handle previous button press
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ]));
  }
}
