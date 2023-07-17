// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:red_squirrel/utils/constants/colors.dart';
import 'package:red_squirrel/utils/constants/fonts.dart';
import 'package:red_squirrel/utils/constants/strings.dart';
import 'package:red_squirrel/widgets/Rounded_button.dart';
import 'package:red_squirrel/utils/constants/resources.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  static Page<void> page() => const MaterialPage<void>(child: HomePage());

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
                  child: const Row(
                    children: [
                      Text(
                        Strings.subTitle1,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontFamily: Fonts.secondaryFont,
                          fontWeight: FontWeight.w400,
                        ),
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
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: Fonts.secondaryFont,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            Strings.subTitle3,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: Fonts.secondaryFont,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        Strings.subTitle4,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontFamily: Fonts.secondaryFont,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 160,
            left: 0,
            right: 0,
            child: Container(
              height: 30,
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
              Container(
                color: Theme.of(context).colorScheme.background,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  children: [
                    Expanded(
                      flex: 24,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: ThemeColors.gradient1,
                        ),
                        child: Stack(children: [
                          const Positioned(
                              top: 20,
                              left: 0,
                              right: 0,
                              child: Text(
                                Strings.homeFullTest,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ThemeColors.secondary,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                          Positioned(
                              left: 20,
                              bottom: 20,
                              width: 80,
                              height: 80,
                              child: SvgPicture.asset(
                                SvgIcons.clock,
                                fit: BoxFit.cover,
                              )),
                          Positioned(
                              right: 20,
                              bottom: 20,
                              child: RoundedButton(
                                  onPressed: () {},
                                  text: Strings.homeStartButton,
                                  outlined: true,
                                  foregroundColor:
                                      Theme.of(context).colorScheme.secondary))
                        ]),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                        flex: 20,
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: ThemeColors.gradient2,
                              ),
                              child: Stack(children: [
                                Positioned(
                                    left: 20,
                                    bottom: 20,
                                    width: 60,
                                    height: 60,
                                    child: SvgPicture.asset(
                                      SvgIcons.checkList,
                                      fit: BoxFit.cover,
                                    )),
                                const Positioned(
                                    top: 10,
                                    left: 0,
                                    right: 0,
                                    child: Text(
                                      Strings.homeChapterTest,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ThemeColors.secondary,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                              ]),
                            )),
                            const SizedBox(width: 16),
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                gradient: ThemeColors.gradient3,
                              ),
                              child: Stack(children: [
                                Positioned(
                                    right: 20,
                                    bottom: 5,
                                    height: 60,
                                    child: Image.asset(
                                      SvgIcons.books,
                                      fit: BoxFit.fill,
                                    )),
                                const Positioned(
                                    top: 10,
                                    left: 0,
                                    right: 0,
                                    child: Text(
                                      Strings.homeBuyBooks,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ThemeColors.secondary,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                              ]),
                            )),
                          ],
                        )),
                    const SizedBox(height: 32),
                    Expanded(
                      flex: 21,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 1.0, color: Colors.grey)),
                      ),
                    ),
                    const SizedBox(height: 64),
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
        flex: 55,
        child: Container(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    ]));
  }
}
