import 'package:doctor_application_2/core/helpers/spacing.dart';
import 'package:doctor_application_2/core/themeing/color_manager.dart';
import 'package:doctor_application_2/features/home/logic/cubit/home_cubit.dart';
import 'package:doctor_application_2/features/home/logic/cubit/home_state.dart';
import 'package:doctor_application_2/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:doctor_application_2/features/home/ui/widgets/doctor_list_view.dart';
import 'package:doctor_application_2/features/home/ui/widgets/doctor_text.dart';
import 'package:doctor_application_2/features/home/ui/widgets/home_top_bar.dart';
import 'package:doctor_application_2/features/home/ui/widgets/last_widget.dart';
import 'package:doctor_application_2/features/home/ui/widgets/recomendation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              HomeTopBar(),
              verticalSpacing(50),
              Center(child: DoctorBlueContainer()),
              verticalSpacing(40),
              DoctorText(),
              verticalSpacing(20),
              BlocBuilder<HomeCubit, HomeState>(
                buildWhen: (previous, current) =>
                    current is SpecializationsLoading ||
                    current is SpecializationsSuccess ||
                    current is SpecializationsError,
                builder: (context, state) {
                  return state.maybeWhen(
                    specializationsLoading: () {
                      return SizedBox(
                        height: 500,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: ColorManager.mainBlue,
                          ),
                        ),
                      );
                    },
                    specializationsError: (errorHandler) {
                      return SizedBox.shrink();
                    },
                    specializationsSuccess: (specializationsResponseModel) {
                      var specializationData =
                          specializationsResponseModel.specializationDataList;

                      return Column(
                        children: [
                          DoctorListView(
                              specializationDataList: specializationData!),
                          verticalSpacing(20),
                          Recomendation(),
                          SizedBox(
                            height: 10.h,
                          ),
                          LastWidget(
                              doctors: specializationData[0]?.doctorsList)
                        ],
                      );
                    },
                    orElse: () {
                      return SizedBox.shrink();
                    },
                  );
                },
              )
            ]),
          ),
        ),
      ),
    );
  }
}
