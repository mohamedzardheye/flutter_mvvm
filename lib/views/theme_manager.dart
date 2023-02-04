// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mvvm/views/font_manager.dart';
import 'package:flutter_mvvm/views/styles_manager.dart';
import 'values_manager.dart';
import 'color_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: colorManager.primary,
    primaryColorLight: colorManager.primaryOpacity70,
    primaryColorDark: colorManager.darkGrey,
    disabledColor: colorManager.grey, // will be used in case of disabled button
    splashColor: colorManager.primaryOpacity70,
    accentColor: colorManager.grey,

    // card view theme
    cardTheme: CardTheme(
        color: colorManager.white,
        shadowColor: colorManager.grey,
        elevation: appSize.s4),

    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: colorManager.primary,
        elevation: appSize.s4,
        shadowColor: colorManager.primaryOpacity70,
        titleTextStyle:
            getRegularStyle(color: colorManager.white, fontSize: FontSize.s16)),

    // buttom theme
    buttonTheme: ButtonThemeData(
        shape: StadiumBorder(),
        disabledColor: colorManager.grey,
        buttonColor: colorManager.primary,
        splashColor: colorManager.primaryOpacity70),

    // Elavated buttom
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(color: colorManager.white),
          primary: colorManager.primary,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(appSize.s12))),
    ),

    // Text theme

    // input decoration theme (text form field)
  );
}
