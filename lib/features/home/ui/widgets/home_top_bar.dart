import 'package:doctor_application_2/core/helpers/spacing.dart';
import 'package:doctor_application_2/core/themeing/color_manager.dart';
import 'package:doctor_application_2/core/themeing/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Yaser!",
              style: Textstyles.font14DarkBlueBold,
            ),
            verticalSpacing(7),
            Text(
              "How Are You Today?",
              style: Textstyles.font12GrayRegular,
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            print("done");
          },
          child: CircleAvatar(
            radius: 24,
            backgroundColor: ColorManager.moreLighterGray,
            child: SvgPicture.asset("assets/images/n.svg"),
          ),
        )
      ],
    );
  }
}
