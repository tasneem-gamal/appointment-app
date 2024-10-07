

import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:appointment_app/feature/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchStateInitial());

  final HomeRepo homeRepo;

  Future<void> searchForDoctors(String doctorName) async {
  emit(SearchStateLoading());

  final eitherResult = await homeRepo.getDoctorsBySearch(doctorName);
  eitherResult.fold(
    (failure) {
      emit(SearchStateFailure(failure.errMessage));
    },
    (doctorsList) {
      emit(doctorsList.isEmpty 
        ? SearchStateFailure('No doctors found.')
        : SearchStateSucess(doctorsList));
    },
  );
}
}
