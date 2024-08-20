import 'package:doctor_application_2/core/networking/api_service.dart';
import 'package:doctor_application_2/core/networking/dio_factory.dart';
import 'package:doctor_application_2/features/home/data/repos/home_repo.dart';
import 'package:doctor_application_2/features/login/data/repos/login_repo.dart';
import 'package:doctor_application_2/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_application_2/features/signup/data/repos/sign_up_repo.dart';
import 'package:doctor_application_2/features/signup/logic/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
  // home
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  
   
}
