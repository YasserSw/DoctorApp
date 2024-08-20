import 'package:doctor_application_2/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Rich extends StatelessWidget {
  const Rich({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: "By logging, you agree to our\t",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.sp,
            ),
          ),
          TextSpan(
              text: "Terms &Conditions and PrivacyPolicy",
              style: TextStyle(
                  fontSize: 13.sp, color: Colors.black, height: 1.7.h)),
        ])),
        verticalSpacing(40.h),
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: "Already have an account yet\t",
              style: TextStyle(color: Colors.black, fontSize: 14.sp)),
          TextSpan(
              text: "Sign Up",
              style: TextStyle(
                  fontSize: 13.sp, color: Colors.blue, height: 1.7.h)),
        ])),
      ],
    );
  }
}
