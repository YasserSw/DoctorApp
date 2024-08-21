import 'package:doctor_application_2/core/di/dependency_injection.dart';
import 'package:doctor_application_2/core/helpers/shared_pref_helper.dart';
import 'package:doctor_application_2/core/routing/approuter.dart';
import 'package:doctor_application_2/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/helpers/constants.dart';
import 'package:doctor_application_2/core/helpers/extensions.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  runApp(DocApp(
    approuter: AppRouter(),
  ));
}

checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
