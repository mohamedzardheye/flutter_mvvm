// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'font_manager.dart';
import 'styles_manager.dart';
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
    textTheme: TextTheme(
      headline1: getSemiBoldStyle(color: colorManager.darkGrey,fontSize:FontSize.s16),
      subtitle1:  getMediumStyle(color: colorManager.lightGrey,fontSize:FontSize.s14),
      caption: getRegularStyle(color: colorManager.grey),
      bodyText1: getRegularStyle(color: colorManager.grey)
    ),




    // input decoration theme (text form field)

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(appPadding.p8),

      //hintStyle
      hintStyle: getRegularStyle(color: colorManager.grey),

      //label style
      labelStyle: getRegularStyle(color:colorManager.darkGrey ),


      // error style
      errorStyle: getRegularStyle(color: colorManager.error),


      //enabled border

      enabledBorder: OutlineInputBorder(
        borderSide:BorderSide(color: colorManager.grey, width: appSize.s1_5) ,
        borderRadius:BorderRadius.all(Radius.circular(appSize.s8))),
      


    //Focused border

     focusedBorder: OutlineInputBorder(
        borderSide:BorderSide(color: colorManager.primary, width: appSize.s1_5) ,
        borderRadius:BorderRadius.all(Radius.circular(appSize.s8)),
      ),

    // error border
    errorBorder: OutlineInputBorder(
      borderSide:BorderSide(color: colorManager.error, width: appSize.s1_5) ,
        borderRadius:BorderRadius.all(Radius.circular(appSize.s8)),
      ),


  // focused error border
    focusedErrorBorder: OutlineInputBorder(
      borderSide:BorderSide(color: colorManager.error, width: appSize.s1_5) ,
        borderRadius:BorderRadius.all(Radius.circular(appSize.s8)),
      ),



    )
  );
}
