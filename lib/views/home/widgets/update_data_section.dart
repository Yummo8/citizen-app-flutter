// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:indexed/indexed.dart';
import 'package:red_squirrel/utils/constants/colors.dart';
import 'package:red_squirrel/utils/constants/strings.dart';
import 'package:red_squirrel/utils/constants/test_style.dart';
import 'package:red_squirrel/widgets/Rounded_button.dart';

class UpdateDataSection extends StatelessWidget {
  const UpdateDataSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 21,
      child: Indexer(
        children: [
          Indexed(
            index: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 1.0, color: Colors.grey),
              ),
              padding: const EdgeInsets.all(16),
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        textDirection: TextDirection.ltr,
                        children: [
                          Text(
                            Strings.homeUpdateComment,
                            textAlign: TextAlign.right,
                            style: CustomTextStyle.LabelText(
                                ThemeColors.secondary, 16, FontWeight.w400),
                          ),
                          const SizedBox(height: 5),
                          Text(Strings.homeUpdateDate,
                              textAlign: TextAlign.right,
                              style: CustomTextStyle.SpanText())
                        ],
                      )),
                  Positioned(
                      bottom: 10,
                      left: 0,
                      child: Text(
                        Strings.homeUpdateQuestion,
                        style: CustomTextStyle.LabelText(),
                      )),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: RoundedButton(
                          onPressed: () {},
                          text: Strings.homeUpdateButton,
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary,
                          foregroundColor: Colors.white)),
                ],
              ),
            ),
          ),
          Indexed(
              index: 1,
              child: Positioned(
                  top: -10,
                  left: 16,
                  child: SvgPicture.asset(
                    "assets/icons/speaker.svg",
                    width: 60,
                  ))),
        ],
      ),
    );
  }
}
