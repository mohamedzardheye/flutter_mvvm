// ignore_for_file: camel_case_types, camel_case_extensions, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'font_manager.dart';

TextStyle getTextStyle(double fontSize, String fontFamily, Color color, FontWeight fontWeight){
  return TextStyle(
    fontSize: fontSize, 
    fontFamily: fontFamily,
    color: color,
    fontWeight: fontWeight);
}



// regular style 
TextStyle getRegularStyle({double fontSize = FontSize.s12, required Color color})
{
  return getTextStyle(fontSize, FontConstants.fontFamily, color ,FontWeightManager.regular);
}

// light style 
TextStyle getLightStyle({double fontSize = FontSize.s12, required Color color})
{
  return getTextStyle(fontSize, FontConstants.fontFamily, color ,FontWeightManager.light);
}


// Medium Style
TextStyle getMediumStyle({double fontSize = FontSize.s12, required Color color})
{
  return getTextStyle(fontSize, FontConstants.fontFamily, color ,FontWeightManager.medium);
}

// Bold Style
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color})
{
  return getTextStyle(fontSize, FontConstants.fontFamily, color ,FontWeightManager.bold);
}


// Semi Bold Style
TextStyle getSemiBoldStyle({double fontSize = FontSize.s12, required Color color})
{
  return getTextStyle(fontSize, FontConstants.fontFamily, color ,FontWeightManager.semiBold);
}