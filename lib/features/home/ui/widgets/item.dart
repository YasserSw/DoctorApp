// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:doctor_application_2/core/helpers/spacing.dart';
import 'package:doctor_application_2/core/themeing/color_manager.dart';
import 'package:doctor_application_2/core/themeing/textstyles.dart';
import 'package:flutter/material.dart';

import 'package:doctor_application_2/features/home/data/models/specializations_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Item extends StatelessWidget {
  final Doctors? doctors;
  const Item({
    Key? key,
    this.doctors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 150.h,
                  width: 150.w,
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorManager.gray),
                  child: Image.network(
                    doctors?.photo ?? "assets/images/Image.png",
                    fit: BoxFit.scaleDown,
                  )),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctors?.name ?? "Doc",
                      style: Textstyles.font14DarkBlueBold
                          .copyWith(overflow: TextOverflow.ellipsis),
                    ),
                    verticalSpacing(9),
                    Text(doctors?.degree ?? "Doc"),
                    verticalSpacing(9),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          maxLines: 1,
                          doctors?.email ?? "DocEmail",
                          style: Textstyles.font12BlueRegular.copyWith(
                            fontSize: 11.5.sp,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        // Text("RATING"),
                      ],
                    ),
                    verticalSpacing(10),
                    Text(doctors?.phone ?? "DocEmail"),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            width: 50.w,
            height: 20.h,
          ),
        ]);
  }
}
