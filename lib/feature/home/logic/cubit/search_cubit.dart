

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
      final doctorsList = await homeRepo.getDoctorsBySearch(doctorName);
      emit(SearchStateSucess(doctorsList as List<Doctor>));
    } catch (error) {
      emit(SearchStateFailure('failed'));
    }
  }
}