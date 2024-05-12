import 'package:app_template_setup/core/constants/colors.dart';
import 'package:flutter/material.dart';

import 'fontsize.dart';

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
    fontSize: fontSizeSmall,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// fontSize = 15;
TextStyle textStyleNormal({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: fontSizeNormal,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// fontSize = 17;
TextStyle textStyleMedium({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: fontSizeTitle,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// fontSize = 19;
TextStyle textStyleLarge({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: fontSizeLarge,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// fontSize = 21;
TextStyle textStyleXLarge({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: fontSizeXLarge,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// fontSize = 24;
TextStyle textStyleHeaderSmall({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: fontSizeHeaderSmall,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// fontSize = 26;
TextStyle textStyleHeaderNormal({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: fontSizeHeaderNormal,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// fontSize = 28;
TextStyle textStyleHeaderMedium({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: fontSizeHeaderMedium,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// fontSize = 30;
TextStyle textStyleHeaderLarge({bool isUseSecondColor = false, bool isUseSoftColor = false, bool isUseTextBold = false, Color? color}) {
  return TextStyle(
    fontSize: fontSizeHeaderLarge,
    color: color ?? textColor(isUseSecondColor: isUseSecondColor, isUseSoftColor: isUseSoftColor),
    fontWeight: isUseTextBold ? FontWeight.bold : FontWeight.normal,
  );
}

// CONDITION GET COLOR
Color? textColor({bool isUseSecondColor = false, bool isUseSoftColor = false}) {
  if (isUseSecondColor) {
    return isUseSoftColor ? textSoftColorSecondary : textColorSecondary;
  } else {
    return isUseSoftColor ? textSoftColorPrimary : textColorPrimary;
  }
}
