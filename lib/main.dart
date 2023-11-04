import 'package:flutter/material.dart';
import 'package:ui_task/constants/colors.dart';
import 'package:ui_task/pages/home_page.dart';
import 'package:shared_code/shared_code.dart';

//? this command for building json serlization methods
// dart run build_runner build --delete-conflicting-outputs

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
      title: 'UI Task',
      theme:
          //? some theming styles
          ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: h1TextStyle.copyWith(
            color: Colors.black,
          ),
        ),
        scaffoldBackgroundColor: AppColors.background,
      ),
      home: const HomePage(),
    );
  }
}
