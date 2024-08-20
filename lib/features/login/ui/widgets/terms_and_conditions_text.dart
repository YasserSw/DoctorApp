import 'package:doctor_application_2/core/themeing/textstyles.dart';
import 'package:flutter/material.dart';


class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: Textstyles.font13GrayRegular,
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: Textstyles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: ' and',
            style: Textstyles.font13GrayRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: Textstyles.font13DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}
