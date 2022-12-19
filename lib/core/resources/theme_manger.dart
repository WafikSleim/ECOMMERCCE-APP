import 'package:ecommerce_app/core/resources/fonts_manger.dart';
import 'package:ecommerce_app/core/resources/text_style_manger.dart';
import 'package:ecommerce_app/core/resources/values_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color_manger.dart';

class ThemeManger {
  static ThemeData get light => ThemeData(
    /// TODO theme implementation

    scaffoldBackgroundColor: ColorManger.white,

    appBarTheme: const AppBarTheme(
      backgroundColor: ColorManger.white,
      centerTitle: true,
      elevation: AppSize.s2,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorManger.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: ColorManger.grey,
        systemNavigationBarColor: ColorManger.white,
        systemNavigationBarIconBrightness: Brightness.dark
      ),
      toolbarHeight: AppSize.s50,
    ),

    dividerColor: Colors.transparent,
    cardTheme: CardTheme(
        color: ColorManger.white,
        margin: const EdgeInsets.all(AppMargin.m8),
        elevation: AppSize.s5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
        shadowColor: ColorManger.grey
    ),

    textTheme: TextTheme(
      headlineLarge: TextStyleManger.getBoldStyle(color: ColorManger.lightSlateGray, fontSize: FontSizeManger.f22),
      bodyMedium: TextStyleManger.getMediumStyle(color: ColorManger.black, fontSize: FontSizeManger.f14),
      bodySmall: TextStyleManger.getRegularStyle(color: ColorManger.gunmetal, fontSize: FontSizeManger.f16),
    ),

  );
}