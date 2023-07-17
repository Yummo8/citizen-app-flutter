// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:red_squirrel/route.dart';
import 'package:device_preview/device_preview.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:red_squirrel/utils/constants/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(DevicePreview(
    enabled: false,
    builder: (context) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppView();
  }
}

class AppView extends StatelessWidget implements TickerProvider {
  const AppView({super.key});

  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme(),
        title: "Red Squirrel",
        home: LoaderOverlay(
            useDefaultLoading: false,
            child: FlowBuilder<PageRouteState>(
              state: getRouteState(),
              onGeneratePages: onGenerateAppViewPages,
            )));
  }
}
