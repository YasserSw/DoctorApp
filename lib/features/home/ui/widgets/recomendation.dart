import 'package:doctor_application_2/core/themeing/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Recomendation extends StatelessWidget {
  const Recomendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Recomndation Doctor",
          style: Textstyles.font14DarkBlueBold,
        ),
        SizedBox(
          width: 130.w,
        ),
        Text(
          "See All",
          style: Textstyles.font13BlueSemiBold,
        ),
      ],
    );
  }
}
