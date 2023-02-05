import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'color_palete.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Palette.primary,
  ),
  fontFamily: "AvenirNextLTPro-Regular",
  primaryColor: Palette.primary,
  scaffoldBackgroundColor: const Color(0xffFFFFFF),
  iconTheme: const IconThemeData(color: Color(0xffFFFFFF), size: 20),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xffF99F25),
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: Colors.white,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xffFFFFFF),
    centerTitle: true,
    actionsIconTheme: IconThemeData(
      color: Color(0xffFFFFFF),
      size: 22,
    ),
    iconTheme: IconThemeData(
      color: Palette.primary,
      size: 20,
    ),
    titleTextStyle: TextStyle(
      fontFamily: "AvenirNextLTPro-Regular",
      color: Color(0xffFFFFFF),
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: primaryBrown,
      statusBarIconBrightness: Brightness.dark,
    ),
    elevation: 0,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedIconTheme: IconThemeData(
      color: Palette.primary,
      size: 22,
    ),
    unselectedIconTheme: IconThemeData(
      color: Color(0xffFFFFFF),
      size: 20,
    ),
    selectedLabelStyle: TextStyle(
      color: Color(0xff000000),
      fontFamily: "AvenirNextLTPro-Regular",
      fontSize: 11,
      fontWeight: FontWeight.w500,
    ),
    unselectedLabelStyle: TextStyle(
      color: Color(0xffFFFFFF),
      fontFamily: "AvenirNextLTPro-Regular",
      fontSize: 11,
      fontWeight: FontWeight.w400,
    ),
    selectedItemColor: Color(0xFFFFFFFF),
    unselectedItemColor: Color(0xFFFFFFFF),
  ),
  checkboxTheme: CheckboxThemeData(
    side: const BorderSide(width: .7, color: Color(0xff999999)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    splashRadius: 15,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    fillColor:
        MaterialStateColor.resolveWith((states) => primaryNavy),
    checkColor: MaterialStateColor.resolveWith((states) => Colors.white),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontFamily: "AvenirNextLTPro-Regular",
      fontSize: 34,
      fontWeight: FontWeight.w400,
    ),
    headline2: TextStyle(
      fontFamily: "AvenirNextLTPro-Regular",
      fontSize: 24,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    headline3: TextStyle(
      fontFamily: "AvenirNextLTPro-Regular",
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    headline4: TextStyle(
      fontFamily: "AvenirNextLTPro-Regular",
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    headline5: TextStyle(
      fontFamily: "AvenirNextLTPro-Regular",
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    headline6: TextStyle(
        fontFamily: "AvenirNextLTPro-Regular",
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.w400),
    bodyText1: TextStyle(
      fontFamily: "AvenirNextLTPro-Regular",
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodyText2: TextStyle(
      fontFamily: "AvenirNextLTPro-Regular",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    subtitle1: TextStyle(
      fontFamily: "AvenirNextLTPro-Regular",
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    subtitle2: TextStyle(
      fontFamily: "AvenirNextLTPro-Regular",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    caption: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: "AvenirNextLTPro-Regular",
      color: Colors.black,
    ),
    button: TextStyle(
      fontFamily: "AvenirNextLTPro-Regular",
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
  ),
);
