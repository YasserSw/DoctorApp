import 'package:bloc/bloc.dart';
import 'package:doctor_application_2/core/helpers/shared_pref_helper.dart';
import 'package:doctor_application_2/features/login/data/models/login_request_body.dart';

import 'package:doctor_application_2/features/login/logic/cubit/login_state.dart';

import 'package:doctor_application_2/features/login/data/repos/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/networking/dio_factory.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  LoginCubit(
    this.loginRepo,
  ) : super(LoginState.initial());
  void emitloginloaded(LoginRequestBody loginRequestBody) async {
    emit(LoginState.loading());
    final response = await loginRepo.login(loginRequestBody);
    response.when(success: (LoginResponse) async {
          await saveUserToken(LoginResponse.userData?.token ?? '');

      emit(LoginState.success(LoginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
