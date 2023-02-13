import 'package:flutter/material.dart';
import 'package:infinitybrand/core/constant/color.dart';

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 12, color: AppColor.codgray, fontWeight: FontWeight.w300),
      headline3: TextStyle(
          fontSize: 15, color: AppColor.codgray, fontWeight: FontWeight.w600),
      headline2: TextStyle(
          fontSize: 17, color: AppColor.codgray, fontWeight: FontWeight.w600),
      bodyText1: TextStyle(
          fontSize: 20.5, color: AppColor.white, fontWeight: FontWeight.w600),
      bodyText2: TextStyle(height: 2, color: AppColor.grey, fontSize: 14)),
  primarySwatch: Colors.blue,
);
