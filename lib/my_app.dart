import 'package:app_template_setup/core/constants/colors.dart';
import 'package:app_template_setup/core/constants/fontsize.dart';
import 'package:app_template_setup/setup/theme_data.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: setUpTheme,
        home: const Scaffold(
          body: Center(
            child: Text(
              'ສະບາຍດີ',
              style: TextStyle(color: textColorPrimary, fontSize: fontSizeXLarge),
            ),
          ),
        ));
  }
}
