import 'package:doctor_application_2/core/themeing/textstyles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: Textstyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Login',
            style: Textstyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.of(context).pushReplacementNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}
