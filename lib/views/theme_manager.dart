import 'package:flutter/material.dart';
import 'values_manager.dart';
import 'color_manager.dart';

ThemeData getApplicationTheme(){
  return ThemeData(

    // main colors of the app 
    primaryColor: colorManager.primary,
    primaryColorLight: colorManager.primaryOpacity70,
    primaryColorDark: colorManager.darkGrey,
    disabledColor: colorManager.grey ,  // will be used in case of disabled button
    // ignore: deprecated_member_use
    accentColor: colorManager.grey,


    // card view theme
    cardTheme: CardTheme(
      color:colorManager.white,
      shadowColor: colorManager.grey,
      elevation: appSize.s4
    )



    // buttom theme


    // Text theme



    // input decoration theme (text form field)







  );
}