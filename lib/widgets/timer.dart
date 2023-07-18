// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:red_squirrel/utils/constants/colors.dart';

class CountTimer extends StatefulWidget {
  final int timeDuration;
  final Color backgroundColor;

  const CountTimer({
    super.key,
    required this.timeDuration,
    this.backgroundColor = ThemeColors.counterColor,
  });

  @override
  State<CountTimer> createState() => _CounterState();
}

class _CounterState extends State<CountTimer> {
  late int timeDuration;

  @override
  void initState() {
    super.initState();
    timeDuration = widget.timeDuration;
  }

  void ticker() {
    setState(() {
      if (timeDuration > 0) {
        timeDuration -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = strDigits((timeDuration / 60).floor());
    final seconds = strDigits(timeDuration % 60);
    return Container(
        width: 92,
        height: 28,
        margin: const EdgeInsets.only(top: 2.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: widget.backgroundColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(
              Icons.alarm_sharp,
              color: Colors.white,
            ),
            Text(
              '$minutes:$seconds',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ));
  }
}
