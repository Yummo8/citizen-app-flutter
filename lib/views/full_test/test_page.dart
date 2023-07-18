// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:red_squirrel/utils/constants/colors.dart';
import 'package:red_squirrel/utils/constants/strings.dart';
import 'package:red_squirrel/widgets/answer_button.dart';
import 'package:red_squirrel/widgets/timer.dart';
import 'package:red_squirrel/widgets/progress_bar.dart';
import 'package:red_squirrel/widgets/question_label.dart';
import 'package:red_squirrel/utils/constants/resources.dart';
import 'package:red_squirrel/widgets/submit_button.dart';
import 'package:red_squirrel/widgets/navbar.dart';

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
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Column(children: [
          //////////// Header ///////////////
          Container(
            padding: const EdgeInsets.only(bottom: 15, top: 49),
            color: Theme.of(context).colorScheme.primary,
            alignment: Alignment.center,
            child: Center(
              child: Text(
                Strings.fullTestCaption.toUpperCase(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),

          /////////////Content////////////
          Expanded(
            child: Stack(children: [
              Container(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                clipBehavior: Clip.none,
                decoration: const BoxDecoration(
                  color: ThemeColors.background,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16)),
                ),
                child: Stack(children: [
                  Positioned(
                      bottom: -46,
                      right: -12,
                      width: 280,
                      child: Image.asset(
                        Images.bridge,
                        fit: BoxFit.scaleDown,
                      )),
                  Column(children: [
                    CountTimer(
                      timeDuration: 250,
                    ),
                    ProgressBar(count: 24),
                    Expanded(
                        child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            QuestionLabel(
                              question:
                                  'Who was the first person to sail single-handed around the world?',
                            ),
                            SizedBox(height: 40),
                            AnswerButton(
                              answer: 'Sr. Francis Drake',
                            ),
                            AnswerButton(
                              answer: 'Sr. Francis Walsingham',
                            ),
                            AnswerButton(
                              answer: 'Sr. Francis Chichester',
                            ),
                            AnswerButton(
                              answer: 'Sr. Francis Chichester',
                            ),
                            SizedBox(
                                width: 100,
                                child: SubmitButton(
                                    text: Strings.submitButton.toUpperCase()))
                          ]),
                    )),
                  ]),
                ]),
              ),
            ]),
          ),

          ///////////  NavBar ///////////////
          NavBar(),
        ]));
  }
}
