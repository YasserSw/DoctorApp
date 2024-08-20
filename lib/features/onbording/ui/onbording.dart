import 'package:doctor_application_2/core/helpers/spacing.dart';
import 'package:doctor_application_2/features/onbording/ui/widgets/doctor_image_and_text.dart';
import 'package:doctor_application_2/features/onbording/ui/widgets/doclogoandname.dart';
import 'package:doctor_application_2/features/onbording/ui/widgets/mainbottun.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
            child: Column(
              children: [
                Doclogoandname(),
                DoctorImageAndText(),
                verticalSpacing(30),
                Mainbottun()
              ],
            )),
      ),
    ));
  }
}
