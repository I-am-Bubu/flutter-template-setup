import 'package:flutter/material.dart';

class NavigationHelper {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic>? navigateTo(String routeName) {
    return navigatorKey.currentState?.pushNamedAndRemoveUntil(routeName, (Route<dynamic> route) => false);
  }

  BuildContext? get currentContext {
    return navigatorKey.currentContext;
  }
}
