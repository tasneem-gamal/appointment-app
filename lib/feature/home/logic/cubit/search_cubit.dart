

import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:appointment_app/feature/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchStateInitial());

  final HomeRepo homeRepo;

  Future<void> searchForDoctors(String doctorName) async {
    emit(SearchStateLoading());
    try {
      final eitherResult = await homeRepo.getDoctorsBySearch(doctorName);

      // Check for success or failure in the result
      eitherResult.fold(
        (failure) {
          emit(SearchStateFailure(failure.errMessage));  // Emit failure with error message
        },
        (doctorsList) {
          if (doctorsList.isEmpty) {
            emit(SearchStateFailure('No doctors found.'));  // Emit failure if no doctors are found
          } else {
            emit(SearchStateSucess(doctorsList));  // Emit success with the list of doctors
          }
        },
      );
    } catch (error) {
      emit(SearchStateFailure('An error occurred: $error'));  // Emit failure with error details
    }
  }
}
