// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:red_squirrel/utils/constants/colors.dart';
import 'package:red_squirrel/utils/constants/fonts.dart';
import 'package:red_squirrel/utils/constants/strings.dart';
import 'package:red_squirrel/utils/constants/test_style.dart';
import 'package:red_squirrel/views/home/widgets/buy_books_section.dart';
import 'package:red_squirrel/views/home/widgets/chapter_test_section.dart';
import 'package:red_squirrel/views/home/widgets/full_test_section.dart';
import 'package:red_squirrel/views/home/widgets/update_data_section.dart';
import 'package:red_squirrel/utils/constants/resources.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  static Page<void> page() => const MaterialPage<void>(child: HomePage());
  static Route<void> route() =>
      MaterialPageRoute<void>(builder: (_) => const HomePage());

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Expanded(
        flex: 230,
        child: Stack(children: [
          Container(
            width: double.infinity,
            height: 190,
            color: Theme.of(context).colorScheme.primary,
            padding: const EdgeInsets.fromLTRB(60, 60, 40, 60),
            child: Row(
              children: [
                Image.asset(
                  Images.logo,
                  fit: BoxFit.fill,
                ),
                const SizedBox(width: 20),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Row(
                    children: [
                      Text(
                        Strings.subTitle1,
                        style: CustomTextStyle.TitleText(),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            Strings.subTitle2,
                            style: CustomTextStyle.LabelText(ThemeColors.label,
                                16, FontWeight.w400, Fonts.secondaryFont),
                          ),
                          Text(
                            Strings.subTitle3,
                            style: CustomTextStyle.LabelText(ThemeColors.label,
                                16, FontWeight.w400, Fonts.secondaryFont),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(Strings.subTitle4,
                          style: CustomTextStyle.TitleText()),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: -1,
            left: 0,
            right: 0,
            child: Container(
              height: 20,
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
          flex: 700,
          child: Stack(
            children: [
              Positioned(
                  bottom: -50,
                  right: 10,
                  width: 280,
                  child: Image.asset(
                    Images.bridge,
                    fit: BoxFit.fill,
                  )),
              Container(
                color: Colors.transparent,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  children: const [
                    FullTestSection(),
                    SizedBox(height: 16),
                    Expanded(
                        flex: 20,
                        child: Row(
                          children: [
                            ChapterTestSection(),
                            SizedBox(width: 16),
                            BuyBooksSection()
                          ],
                        )),
                    SizedBox(height: 32),
                    UpdateDataSection(),
                    SizedBox(height: 64),
                  ],
                ),
              ),
            ],
          )),
      Expanded(
        flex: 55,
        child: Container(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    ]));
  }
}
