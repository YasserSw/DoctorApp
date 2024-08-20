import 'package:doctor_application_2/core/networking/api_error_handler.dart';
import 'package:doctor_application_2/core/networking/api_result.dart';
import 'package:doctor_application_2/core/networking/api_service.dart';
import 'package:doctor_application_2/features/home/data/models/specializations_response_model.dart';

class HomeRepo {
  final ApiService _ApiService;

  HomeRepo(this._ApiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await _ApiService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
