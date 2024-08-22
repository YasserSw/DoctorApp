import 'package:bloc/bloc.dart';
import 'package:doctor_application_2/core/networking/api_error_handler.dart';
import 'package:doctor_application_2/features/home/data/models/specializations_response_model.dart';
import 'package:doctor_application_2/features/home/data/repos/home_repo.dart';
import 'package:doctor_application_2/features/home/logic/cubit/home_state.dart';
import 'package:doctor_application_2/core/helpers/extensions.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  // by this List we'r gonna filter the Doctors
  List<SpecializationsData?>? specializationsList = [];

  void getSpecializations() async {
    emit(const HomeState.specializationsLoading());

    final response = await _homeRepo.getSpecialization();

    response.when(
      
      success: (specializationsResponseModel) {
        specializationsList =
            specializationsResponseModel.specializationDataList ?? [];

        getDoctorsList(specializationId: specializationsList?.first?.id);

        emit(HomeState.specializationsSuccess(specializationsList));
      },
      failure: (errorHandler) {
        emit(HomeState.specializationsError(errorHandler));
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecializationId(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No doctors found')));
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
