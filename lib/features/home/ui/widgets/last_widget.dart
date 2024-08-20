// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:doctor_application_2/features/home/ui/widgets/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:doctor_application_2/features/home/data/models/specializations_response_model.dart';

class LastWidget extends StatelessWidget {
  final List<Doctors?>? doctors;
  const LastWidget({
    Key? key,
      this.doctors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("***********************************");
    print(doctors?.length.toString());
    print("***********************************");
    return SizedBox(
      height: 500.h,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, i) {
         return Item(doctors: doctors?[i],);
        },
        shrinkWrap: true,
        itemCount: doctors?.length,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
