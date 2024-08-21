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
      //!
      "assets/images/8.jpg",
      "assets/images/6.jpg",
      "assets/images/download44.png",
      "assets/images/7.jpg",
      "assets/images/download.png",
      "assets/images/4.jpg",
      "assets/images/5.jpg",
      "assets/images/download1.jpg",
      "assets/images/download22.jpg",
      "assets/images/download33.png"
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
                  backgroundColor: Color.fromARGB(255, 247, 253, 255),
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
