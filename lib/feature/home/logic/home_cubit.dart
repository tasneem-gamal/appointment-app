import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:appointment_app/feature/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(SpecializationStateInitial());

  final HomeRepo homeRepo;

  List<SpecializationData>? specializationList = [];

  void getSpecialization() async {
  emit(SpecializationStateLoading());
  final response = await homeRepo.getSpecialization();

  response.fold(
    (failure) {
      emit(SpecializationStateFailure(failure.errMessage));
      print('Error: ${failure.errMessage}'); // Debug log
    },
    (success) {
      final specializationsResponse = success;
      specializationList = specializationsResponse.specializationDataList;
      print('Fetched specializations: $specializationList'); // Debug log
      emit(SpecializationStateSuccess(specializationList));
    },
  );
}
}


