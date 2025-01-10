import 'package:app_template_setup/core/constants/colors_constant.dart';
import 'package:app_template_setup/core/constants/font_constant.dart';
import 'package:app_template_setup/core/constants/font_size_constant.dart';
import 'package:flutter/material.dart';

ThemeData setUpTheme = ThemeData(
  useMaterial3: false,
  primaryColor: ColorConstant.themeColorPrimary,
  scaffoldBackgroundColor: ColorConstant.themeColorPrimary,
  // scaffoldBackgroundColor: Colors.transparent,
  fontFamily: FontConstant.primaryFont,
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      color: ColorConstant.textColorPrimary,
      fontFamily: FontConstant.primaryFont,
      fontSize: FontSizeConstant.fontSizeXLarge,
    ),
    elevation: 0,
    titleSpacing: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: ColorConstant.textColorPrimary),
    backgroundColor: ColorConstant.themeColorPrimary,
    foregroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
  ),
  bottomSheetTheme: const BottomSheetThemeData(
      // backgroundColor: ColorConstant.themeColorPrimary,
      ),
);
