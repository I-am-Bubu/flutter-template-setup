import 'package:app_template_setup/core/constants/colors_constant.dart';
import 'package:app_template_setup/core/constants/font_size_constant.dart';
import 'package:app_template_setup/setup/theme_data.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: setUpTheme,
        home: Scaffold(
          appBar: AppBar(
            title: const AutoSizeText("APP"),
          ),
          body: const Center(
            child: Text(
              'ສະບາຍດີ',
              style: TextStyle(color: ColorConstant.textThemeColor, fontSize: FontSizeConstant.fontSizeXLarge),
            ),
          ),
        ));
  }
}
