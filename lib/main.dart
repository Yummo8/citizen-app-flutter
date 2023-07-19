import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:device_preview/device_preview.dart';
import 'package:red_squirrel/utils/constants/strings.dart';
import 'package:red_squirrel/utils/constants/theme.dart';
import 'package:red_squirrel/views/splash/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(DevicePreview(
    enabled: false,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AppView();
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
        title: Strings.appName,
        home: const SplashPage());
  }
}
