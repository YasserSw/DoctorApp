import 'package:doctor_application_2/core/helpers/spacing.dart';
import 'package:doctor_application_2/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorListView extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;
  DoctorListView({super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/8.jpg",
      "assets/images/6.jpg",
      "assets/images/3.jpg",
      "assets/images/4.jpg",
      "assets/images/5.jpg",
      "assets/images/2.jpg",
      "assets/images/7.jpg",
      "assets/images/1.jpg",
      "assets/images/9.jpg",
      "assets/images/10.jpg"
    ];
    return SizedBox(
      height: 125.h,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, i) {
          return Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 34,
                  backgroundColor: Color.fromARGB(255, 250, 250, 255),
                  child: Image.asset(
                    images[i],
                    fit: BoxFit.fill,
                    height: 45.h,
                    width: 45.w,
                  ),
                ),
                verticalSpacing(9),
                Text(
                  specializationDataList[i]!.name.toString(),
                  style: TextStyle(fontSize: 13.sp),
                )
              ],
            ),
          );
        },
        shrinkWrap: true,
        itemCount: specializationDataList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
