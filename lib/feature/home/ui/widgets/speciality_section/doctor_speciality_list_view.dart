import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:appointment_app/feature/home/logic/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appointment_app/feature/home/ui/widgets/speciality_section/doctor_specility_item.dart';

class DoctorSpecialityListView extends StatefulWidget {

  const DoctorSpecialityListView({super.key, required this.specializationDataList});
  final List<SpecializationData> specializationDataList;

  @override
  State<DoctorSpecialityListView> createState() => _DoctorSpecialityListViewState();
}

class _DoctorSpecialityListViewState extends State<DoctorSpecialityListView> {
  
  var selectedSpcializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationDataList.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            setState(() {
              selectedSpcializationIndex = index;
            });
            context.read<HomeCubit>().getDoctorsList(
              specializationId: widget.specializationDataList[index].id
            );
          },
          child: DoctorSpecilityItem(
            specializationData: widget.specializationDataList[index],
            selectedIndex: selectedSpcializationIndex,
            itemIndex: index,
          ),
        ),
      ),
    );
  }
}
