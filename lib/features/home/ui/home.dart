import 'package:doctor_application_2/core/helpers/spacing.dart';
import 'package:doctor_application_2/features/home/ui/widgets/doctor_blocbuilder.dart';
import 'package:doctor_application_2/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:doctor_application_2/features/home/ui/widgets/doctor_text.dart';
import 'package:doctor_application_2/features/home/ui/widgets/home_top_bar.dart';
import 'package:doctor_application_2/features/home/ui/widgets/special_blocbuilder.dart';
import 'package:flutter/material.dart';

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
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              HomeTopBar(),
              verticalSpacing(50),
              Center(child: DoctorBlueContainer()),
              verticalSpacing(10),
              DoctorText(),
              verticalSpacing(20),
              SpecialBlocbuilder(),
              verticalSpacing(8),
              DoctorsBlocBuilder()
            ]),
          ),
        ),
      ),
    );
  }
}
