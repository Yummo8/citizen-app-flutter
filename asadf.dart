// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:red_squirrel/utils/constants/colors.dart';
import 'package:red_squirrel/utils/constants/fonts.dart';
import 'package:red_squirrel/utils/constants/strings.dart';
import 'package:red_squirrel/widgets/Rounded_button.dart';
import 'package:red_squirrel/utils/constants/resources.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:red_squirrel/utils/constants/test_style.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({
    super.key,
  });

  static Page<void> page() => const MaterialPage<void>(child: ResultPage());

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  void initState() {
    super.initState();
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
          size: 38,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: color,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
        flex: 100,
        child: Stack(children: [
          Container(
              width: double.infinity,
              height: 160,
              color: Theme.of(context).colorScheme.primary,
              child: Center(
                child: Text(
                  Strings.fullTest,
                  style: CustomTextStyle.HeaderTitleText(ThemeColors.label),
                ),
              )),
          Positioned(
            left: 0,
            right: 0,
            bottom: -1,
            child: Container(
              height: 46,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  color: Theme.of(context).colorScheme.background),
            ),
          ),
        ]),
      ),
      Expanded(
          flex: 400,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 600,
                color: Theme.of(context).colorScheme.background,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SizedBox(
                              height: 100,
                            ),
                            Text(
                              "20/24",
                              style: TextStyle(
                                color: Color(0xFF012169),
                                fontFamily: 'Arial Rounded MT Bold',
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                letterSpacing: 0.2,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Passed",
                              style: TextStyle(
                                color: Color(0xFF012169),
                                fontFamily: 'Arial Rounded MT Bold',
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                letterSpacing: 0.2,
                              ),
                            ),
                          ],
                        ),
                        CircularPercentIndicator(
                            radius: 80,
                            lineWidth: 22,
                            animation: true,
                            percent: 0.85,
                            center: Text(
                              "85%",
                              style: TextStyle(
                                color: Color(0xFF012169),
                                fontSize: 40,
                                fontFamily: 'Arial Rounded MT Bold',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            progressColor: Color(0xFFA2DC5F),
                            backgroundColor: Color(0xFFECF0F3)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SizedBox(
                              height: 100,
                            ),
                            Text(
                              "40:20",
                              style: TextStyle(
                                color: Color(0xFF012169),
                                fontFamily: 'Arial Rounded MT Bold',
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                letterSpacing: 0.2,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Time",
                              style: TextStyle(
                                color: Color(0xFF012169),
                                fontFamily: 'Arial Rounded MT Bold',
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                letterSpacing: 0.2,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Congratulations!",
                      style: TextStyle(
                        color: Color(0xFF012169),
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "You have passed the test.",
                      style: TextStyle(
                        color: Color(0xFF012169),
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Expanded(
                        flex: 30,
                        child: Stack(children: [
                          Center(
                              child: Container(
                            margin: EdgeInsets.only(top: 40),
                            child: _buildButtonColumn(Color(0xFF012169),
                                Icons.local_airport_sharp, ""),
                          )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  _buildButtonColumn(Color(0xFF012169),
                                      Icons.checklist_rounded, 'Check results'),
                                  _buildButtonColumn(
                                      Color(0xFF012169),
                                      Icons.format_list_numbered,
                                      'Test by Chapter'),
                                ],
                              ),
                              Divider(
                                color: Color(0xFF012169),
                                thickness: 3,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 1,
                                    color: Color(0xFF012169),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  _buildButtonColumn(Color(0xFF012169),
                                      Icons.restart_alt, 'Restart test'),
                                  _buildButtonColumn(
                                      Color(0xFF012169),
                                      Icons.exit_to_app_rounded,
                                      'Exit the App'),
                                ],
                              )
                            ],
                          ),
                        ]))
                  ],
                ),
              ),
            ],
          )),
    ]));
  }
}
