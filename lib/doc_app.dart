// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:doctor_application_2/core/helpers/constants.dart';
import 'package:doctor_application_2/core/routing/routes.dart';
import 'package:doctor_application_2/core/themeing/color_manager.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor_application_2/core/routing/approuter.dart';

class DocApp extends StatelessWidget {
  final AppRouter approuter;
  const DocApp({
    Key? key,
    required this.approuter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          initialRoute: isLoggedInUser ? Routes.homeScreen : Routes.loginScreen,
          onGenerateRoute: approuter.generateRoute,
          theme: ThemeData(
              primaryColor: ColorManager.mainBlue,
              scaffoldBackgroundColor: Colors.white),
        );
      },
    );
  }
}
