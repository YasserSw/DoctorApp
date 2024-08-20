import 'package:doctor_application_2/core/themeing/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorText extends StatelessWidget {
  const DoctorText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Doctor Speciality",
          style: Textstyles.font14DarkBlueBold,
        ),
        SizedBox(
          width: 150.w,
        ),
        Text(
          "See All",
          style: Textstyles.font13BlueSemiBold,
        ),
      ],
    );
  }
}
