part of 'search_cubit.dart';

class SearchState {}
class SearchStateInitial extends SearchState{}
class SearchStateLoading extends SearchState{}
class SearchStateSucess extends SearchState{
  final List<Doctor> doctorsList;

  SearchStateSucess(this.doctorsList);
}
class SearchStateFailure extends SearchState{
  final String errMessage;

  SearchStateFailure(this.errMessage);
}
