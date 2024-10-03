import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:appointment_app/feature/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(SpecializationStateInitial());

  final HomeRepo homeRepo;
  List<SpecializationData?>? specializationsList = [];

  void getSpecializations() async {
    emit(SpecializationStateLoading());
    final response = await homeRepo.getSpcialization();
    response.fold((failure) {
      emit(SpecializationStateFailure(failure.errMessage));
    }, (specializationResponseModel) {
      specializationsList = specializationResponseModel.specializationDataList;

      if (specializationsList != null && specializationsList!.isNotEmpty) {
        getDoctorsList(specializationId: specializationsList!.first?.id);
      }
      emit(SpecializationStateSuccess(specializationResponseModel));
    });
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctor>? doctorsList =
        getDoctorsListBySpecializationId(specializationId);
    if (doctorsList != null && doctorsList.isNotEmpty) {
      emit(DoctorsSuccess(doctorsList));
    } else {
      emit(DoctorsFailure('No doctors found'));
    }
  }

  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}


