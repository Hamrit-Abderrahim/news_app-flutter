import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../resources/font_manager.dart';
import '../../resources/style_manager.dart';
import '../../resources/value_manager.dart';
import '../color/dark_color.dart';

ThemeData getDarkTheme() {
  return ThemeData(
//***********************main Colors**********************//

      primaryColor: ColorManager.primary,
      // primaryColorLight: ColorManager.lightPrimary,
      // primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.textGrey,
      //splashColor: ColorManager.lightPrimary,
//********************** */
      scaffoldBackgroundColor: ColorManager.primary,
//**********************card view theme ***********************//
      cardTheme: const CardTheme(
        color: ColorManager.primary,
        shadowColor: ColorManager.backgroundColor,
        elevation: AppSize.s8,
      ),
//**********************appBar theme ***********************//
      appBarTheme: AppBarTheme(
          color: ColorManager.primary,
          // iconTheme: IconThemeData(color: Colors.red),
          centerTitle: true,
          elevation: AppSize.s0,
          iconTheme: const IconThemeData(color: ColorManager.backgroundColor),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: ColorManager.primary,
            statusBarIconBrightness: Brightness.light,
          ),

          //shadowColor: ColorManager.lightPrimary,
          titleTextStyle: getRegularStyle(
              fontSize: FontSize.s16, color: ColorManager.backgroundColor)),

//**********************button theme ***********************//
      buttonTheme: const ButtonThemeData(
        buttonColor: ColorManager.primary,
        shape: StadiumBorder(),
        disabledColor: ColorManager.textGrey,
      ),

//**********************elevated button theme ***********************//
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(
                color: ColorManager.primary,
                fontSize: AppSize.s17,
              ),
              primary: ColorManager.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)))),
//**********************tzxt theme ***********************//
      textTheme: TextTheme(
        displayLarge: getsemiBoldStyle(
            color: ColorManager.primary, fontSize: FontSize.s16),
        headlineLarge: getRegularStyle(
            color: ColorManager.textGrey, fontSize: FontSize.s14),
        titleMedium:
            getMediumStyle(color: ColorManager.primary, fontSize: FontSize.s16),
        bodyLarge: getRegularStyle(color: ColorManager.textGrey),
        bodySmall: getRegularStyle(color: ColorManager.textGrey),
      ),
//**********************inputDecoration theme **************//
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        //************hint style ****************//
        hintStyle: getRegularStyle(
            color: ColorManager.redColor, fontSize: FontSize.s14),

        //*******label style************ *//
        labelStyle: getRegularStyle(
            color: ColorManager.textGrey, fontSize: FontSize.s18),
        // *************error style ************//
        errorStyle: getRegularStyle(color: ColorManager.redColor),
        //  *******enabled broder style *************//
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.textGrey,
              width: AppSize.s1_5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(AppSize.s8),
            )),
        // *******errorBorder style *************//
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.redColor,
              width: AppSize.s1_5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(AppSize.s8),
            )),
        // *******focusedBorder style *************//
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.blueColor,
              width: AppSize.s1_5,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(AppSize.s8),
            )),
        // *******focusedErrorBorder style *************//
        focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.primary,
              width: AppSize.s1_5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(AppSize.s8),
            )),
      ));
}
