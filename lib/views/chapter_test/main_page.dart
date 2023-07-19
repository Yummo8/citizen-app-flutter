
import 'package:flutter/material.dart';
import 'package:red_squirrel/utils/constants/colors.dart';
import 'package:red_squirrel/utils/constants/strings.dart';
import 'package:red_squirrel/utils/constants/resources.dart';
import 'package:red_squirrel/widgets/navbar.dart';
import 'package:red_squirrel/utils/constants/test_style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  static Page<void> page() => const MaterialPage<void>(child: MainPage());

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Column _testByChapter(
        String chapter, String status, String percent, int score, int total) {
      return Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(1),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 1.0, color: Colors.grey),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(status,
                        style: status.toUpperCase() == "PASSED"
                            ? CustomTextStyle.LabelText(ThemeColors.success)
                            : CustomTextStyle.LabelText(ThemeColors.failed)
                        // ,
                        ),
                    SizedBox(height: 10),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Center(
                        child: SvgPicture.asset(
                          SvgIcons.Line3,
                          width: 130,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('$percent%',
                            style: status.toUpperCase() == "PASSED"
                                ? CustomTextStyle.LabelText(ThemeColors.success)
                                : CustomTextStyle.LabelText(
                                    ThemeColors.failed)),
                        SizedBox(
                          width: 40,
                        ),
                        Text('$score / $total',
                            style: status.toUpperCase() == "PASSED"
                                ? CustomTextStyle.LabelText(ThemeColors.success)
                                : CustomTextStyle.LabelText(ThemeColors.failed))
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      chapter == "2 & 3" ? "Chapters " : Strings.chapter,
                      // Strings.chapter,
                      style: CustomTextStyle.DescText(ThemeColors.secondary),
                    ),
                    Text(
                      chapter,
                      style: CustomTextStyle.SubText(ThemeColors.secondary),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 30),
        ],
      );
    }

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Column(children: [
          //////////// Header ///////////////
          Container(
            padding: const EdgeInsets.only(bottom: 15, top: 49),
            color: Theme.of(context).colorScheme.primary,
            alignment: Alignment.center,
            child: Center(
              child: Text(Strings.testByChapter.toUpperCase(),
                  style: CustomTextStyle.SectionTitle(ThemeColors.label)),
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
                    Expanded(
                        child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(height: 40),
                            _testByChapter(Strings.two, "Passed", "90", 20, 24),
                            _testByChapter(
                                Strings.four, "Passed", "90", 20, 24),
                            _testByChapter(
                                Strings.five, "Passed", "90", 20, 24),
                            _testByChapter(Strings.six, "Failed", "90", 20, 24)
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
