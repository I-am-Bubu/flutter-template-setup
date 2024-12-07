import 'package:app_template_setup/core/constants/colors_constant.dart';
import 'package:flutter/material.dart';

import 'font_size_constant.dart';

// fontSize = 11;
TextStyle textStyleOverLine({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: fontSizeOverline,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// fontSize = 13;
TextStyle textStyleSmall({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: FontSizeConstant.fontSizeSmall,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// fontSize = 15;
TextStyle textStyleNormal({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: FontSizeConstant.fontSizeNormal,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// fontSize = 17;
TextStyle textStyleMedium({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: FontSizeConstant.fontSizeTitle,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// fontSize = 19;
TextStyle textStyleLarge({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: FontSizeConstant.fontSizeLarge,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// fontSize = 21;
TextStyle textStyleXLarge({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: FontSizeConstant.fontSizeXLarge,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// fontSize = 24;
TextStyle textStyleHeaderSmall({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: FontSizeConstant.fontSizeHeaderSmall,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// fontSize = 26;
TextStyle textStyleHeaderNormal({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: FontSizeConstant.fontSizeHeaderNormal,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// fontSize = 28;
TextStyle textStyleHeaderMedium({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: FontSizeConstant.fontSizeHeaderMedium,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// fontSize = 30;
TextStyle textStyleHeaderLarge({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: FontSizeConstant.fontSizeHeaderLarge,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// CONDITION GET COLOR
Color? textColor({bool isUseSecondColor = false, bool isUseSoftColor = false}) {
  if (isUseSecondColor) {
    return isUseSoftColor ? ColorConstant.textSoftColorSecondary : ColorConstant.textColorSecondary;
  } else {
    return isUseSoftColor ? ColorConstant.textSoftColorPrimary : ColorConstant.textColorPrimary;
  }
}
