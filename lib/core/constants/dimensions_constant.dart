import 'package:flutter/material.dart';

class DimensionConstant {
  // SCREEN
  double screenFullWidth(BuildContext context) => MediaQuery.of(context).size.width;
  double screenFullHeight(BuildContext context) => MediaQuery.of(context).size.height;
  double viewPaddingBottom(BuildContext context) => MediaQuery.of(context).viewPadding.bottom;

// PADDING
  static double defaultPaddingSize = 14;
  static const double paddingSize = 12;
  static const double smallPaddingSize = 6;

// SPACE
  static const double defaultSpaceSize = 14;
  static const double spaceSize = 12;
  static const double largeSpaceSize = 8;
  static const double mediumSpaceSize = 6;
  static const double smallSpaceSize = 4;
  static const double miniSpaceSize = 2;

// RADIUS
  static const double defaultRadius = 12;
  static const double mediumRadius = 8;
  static const double smallRadius = 6;
  static const double miniRadius = 2;
  static const double buttonRadius = 10;
}
