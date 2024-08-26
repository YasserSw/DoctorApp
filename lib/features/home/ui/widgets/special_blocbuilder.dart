import 'package:doctor_application_2/core/helpers/spacing.dart';
import 'package:doctor_application_2/features/home/logic/cubit/home_cubit.dart';
import 'package:doctor_application_2/features/home/logic/cubit/home_state.dart';
import 'package:doctor_application_2/features/home/ui/widgets/doctor_list_view.dart';
import 'package:doctor_application_2/features/home/ui/widgets/doctors_shimmer_loading.dart';

import 'package:doctor_application_2/features/home/ui/widgets/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialBlocbuilder extends StatelessWidget {
  const SpecialBlocbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return SizedBox(
              height: 2000.h,
              child: Column(
                children: [
                  SpecialityShimmerLoading(),
                  verticalSpacing(30),
                  DoctorsShimmerLoading(),
                ],
              ),
            );
          },
          specializationsError: (errorHandler) {
            return SizedBox.shrink();
          },
          specializationsSuccess: (specializationDataList) {
            var specializationData = specializationDataList;

            return DoctorListView(specializationDataList: specializationData!);
          },
          orElse: () {
            return SizedBox.shrink();
          },
        );
      },
    );
  }
}
