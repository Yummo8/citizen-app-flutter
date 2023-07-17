import 'package:flutter/widgets.dart';
import 'package:red_squirrel/views/full_test/test_page.dart';
import 'package:red_squirrel/views/home/home_page.dart';
// import 'package:red_squirrel/views/splash/splash_page.dart';

enum PageRouteState {
  splash,
  home,
  fullTest,
  chapterTest,
  buyBooks,
}

List<Page<dynamic>> onGenerateAppViewPages(
  PageRouteState state,
  List<Page<dynamic>> pages,
) {
  // if (state == PageRouteState.splash) {
  //   return [SplashPage.page()];
  // } else if (state == PageRouteState.fullTest) {
  //   return [FullTestpage.page()];
  // } else if (state == PageRouteState.chapterTest) {
  //   return [ChapterTestpage.page()];
  // } else if (state == PageRouteState.buyBooks) {
  //   return [BuyBooksPage.page()];
  // } else {
  //   return [HomePage.page()];
  // }
  return [FullTestPage.page()];
}

PageRouteState getRouteState() {
  return PageRouteState.home;
}
