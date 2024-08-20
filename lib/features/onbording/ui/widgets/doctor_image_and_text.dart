import 'package:doctor_application_2/core/helpers/spacing.dart';
import 'package:doctor_application_2/core/themeing/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Image.asset(
                "assets/images/Doct.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Image.asset(
                "assets/images/Image.png",
                fit: BoxFit.contain,
              ),
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.white.withOpacity(0.0)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [0.1, 0.4]),
              ),
            ),
            Positioned(
              bottom: 10,
              child: Container(
                child: Text(
                  "The Best Doctor Appointment App",
                  style: Textstyles.font32BlueBold.copyWith(fontSize: 21.sp),
                ),
              ),
            ),
          ],
        ),
        verticalSpacing(20),
        Container(
          child: Text(
            "manage and schedule all of yours medical appoinments easily with Docdoc to get a new experience",
            style: TextStyle(fontSize: 20.sp, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
