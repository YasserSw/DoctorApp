import 'package:doctor_application_2/core/routing/routes.dart';
import 'package:doctor_application_2/core/themeing/color_manager.dart';



import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mainbottun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(Routes.loginScreen);
        },
        splashColor: Colors.white,
        child: Text(
          "Get  Started",
          style: TextStyle(color: Colors.white, fontSize: 16.sp),
        ),
      ),
      decoration: BoxDecoration(
          color: ColorManager.mainBlue,
          borderRadius: BorderRadius.circular(10)),
      height: 50.h,
      width: 200.w,
    );
  }
}
