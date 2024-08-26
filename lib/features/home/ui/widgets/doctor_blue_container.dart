import 'package:doctor_application_2/core/themeing/color_manager.dart';
import 'package:doctor_application_2/core/themeing/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(255, 130, 129, 189)),
      child: Stack(
        children: [
          Positioned(
            left: 10,
            top: 10,
            child: Text(
              "Book and \nscheddule with\n nearest doctor ",
              style: Textstyles.font16WhiteSemiBold.copyWith(height: 1.5.h),
            ),
          ),
          Positioned(
              bottom: 20,
              child: MaterialButton(
                onPressed: () {},
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Text(
                    "     Find  Nearby      ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 61, 60, 133), fontSize: 14),
                  ),
                ),
                highlightColor: Color.fromARGB(255, 130, 129, 189),
                splashColor: Color.fromARGB(255, 130, 129, 189),
              )),
          Positioned(
            child: Container(
              child: Image.asset(
                "assets/images/205787476-young-happy-female-nurse-writing-in-file-with-papers.png",
                fit: BoxFit.contain,
              ),
            ),
            left: 200,
            right: 0,
            height: 190.h,
            bottom: 1.9.h,
          ),
        ],
        clipBehavior: Clip.none,
      ),
    );
  }
}
