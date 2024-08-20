import 'package:doctor_application_2/core/helpers/spacing.dart';
import 'package:doctor_application_2/core/themeing/textstyles.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class Doclogoandname extends StatelessWidget {
  const Doclogoandname({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/images/Frame.svg"),
        horizontalSpacing(7.2),
        Text(
          "Docdoc",
          style: Textstyles.font24BlackBold,
        )
      ],
    );
  }
}
