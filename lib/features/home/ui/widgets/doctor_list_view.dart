import 'package:doctor_application_2/core/themeing/color_manager.dart';
import 'package:doctor_application_2/core/themeing/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doctor_application_2/core/helpers/spacing.dart';
import 'package:doctor_application_2/features/home/data/models/specializations_response_model.dart';
import 'package:doctor_application_2/features/home/logic/cubit/home_cubit.dart';

class DoctorListView extends StatefulWidget {
  final List<SpecializationsData?> specializationDataList;

  DoctorListView({
    Key? key,
    required this.specializationDataList,
  }) : super(key: key);

  @override
  State<DoctorListView> createState() => _DoctorListViewState();
}

class _DoctorListViewState extends State<DoctorListView> {
  var selectedSpecialIndex;
  var selectedindex;
  var itemindex;

  List<String> images = [
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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.h,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, i) {
          itemindex=i;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedindex = i;
                
              });
              context.read<HomeCubit>().getDoctorsList(
                    specializationId: widget.specializationDataList[i]?.id,
                  );
            },
            child: Container(
              margin:
                  EdgeInsetsDirectional.only(start: itemindex == 0 ? 0 : 24.w),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    itemindex == selectedindex
                        ? Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorManager.darkBlue,
                                ),
                                shape: BoxShape.circle),
                            child: CircleAvatar(
                              radius: 34,
                              backgroundColor:
                                  Color.fromARGB(255, 247, 253, 255),
                              child: Image.asset(
                                images[i],
                                fit: BoxFit.fill,
                                height: 45.h,
                                width: 45.w,
                              ),
                            ),
                          )
                        : CircleAvatar(
                            radius: 34,
                            backgroundColor: Color.fromARGB(255, 247, 253, 255),
                            child: Image.asset(
                              images[i],
                              fit: BoxFit.fill,
                              height: 40.h,
                              width: 40.w,
                            ),
                          ),
                    verticalSpacing(9),
                    Text(
                      widget.specializationDataList[i]!.name.toString(),
                      style: itemindex == selectedindex
                          ? Textstyles.font14DarkBlueBold
                          : Textstyles.font12DarkBlueRegular,
                    )
                  ],
                ),
              ),
            ),
          );
        },
        shrinkWrap: true,
        itemCount: widget.specializationDataList.length,
        scrollDirection: Axis.horizontal,

      ),
    );
  }
}
