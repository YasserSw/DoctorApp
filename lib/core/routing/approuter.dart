import 'package:doctor_application_2/core/di/dependency_injection.dart';
import 'package:doctor_application_2/core/routing/routes.dart';
import 'package:doctor_application_2/features/home/logic/cubit/home_cubit.dart';
import 'package:doctor_application_2/features/home/ui/home.dart';

import 'package:doctor_application_2/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_application_2/features/signup/logic/sign_up_cubit.dart';
import 'package:doctor_application_2/features/signup/ui/signup.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:doctor_application_2/features/onbording/ui/onbording.dart';

import 'package:doctor_application_2/features/login/ui/login.dart';

import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getSpecializations(),
            child: const Home(),
          ),
        );
      default:
        return null;
    }
  }
}
