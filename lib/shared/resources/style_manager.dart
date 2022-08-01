import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily,
      fontWeight: fontWeight,
      color: color);
}

//*****************regularStyle*************//

TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.regular,
    color,
  );
}

//*****************MediumStyle*************//

TextStyle getMediumStyle(
    {double fontSize = FontSize.s14, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

//*****************LightStyle*************//

TextStyle getLightStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}

//*****************bolldStyle*************//

TextStyle getBoldStyle({double fontSize = FontSize.s24, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}

//*****************semiBoldStyle*************//

TextStyle getsemiBoldStyle(
    {double fontSize = FontSize.s18, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}
