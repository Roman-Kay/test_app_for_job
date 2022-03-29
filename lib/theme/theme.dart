// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class MyTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    canvasColor: const Color(0xffFFFFFF),
    primaryColor: const Color(0xffFFFFFF),
    focusColor: const Color(0xffEBEBEB),
    buttonColor: const Color(0xffF2F3FF),
    indicatorColor: const Color(0xff575767),
    dividerColor: const Color(0xffEBEBEB),
    cardColor: const Color(0xffDADADA),
    textSelectionColor: const Color(0xff575767),
    hintColor: const Color(0xff000000),
  );
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    canvasColor: const Color(0xff000000),
    primaryColor: const Color(0xff1E1F25),
    buttonColor: const Color(0xff24242D),
    indicatorColor: const Color(0xff575767),
    dividerColor: const Color(0xff29292F),
    cardColor: const Color(0xff0E0E11),
    textSelectionColor: const Color(0xffDADADA),
    hintColor: const Color(0xffFFFFFF),
  );
}
