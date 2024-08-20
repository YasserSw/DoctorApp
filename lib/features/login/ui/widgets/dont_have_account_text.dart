import 'package:doctor_application_2/core/routing/routes.dart';
import 'package:doctor_application_2/core/themeing/textstyles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';




class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: Textstyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: Textstyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.of(context).pushReplacementNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}