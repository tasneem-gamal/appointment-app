part of 'home_cubit.dart';

class HomeState {}
class SpecializationStateInitial extends HomeState{}
class SpecializationStateLoading extends HomeState{}
class SpecializationStateSuccess extends HomeState {
  final List<SpecializationData> specializationData;

  SpecializationStateSuccess(this.specializationData);
}
class SpecializationStateFailure extends HomeState{
  final String errMessage;

  SpecializationStateFailure(this.errMessage);
}

class DoctorsSuccess extends HomeState{
  final List<Doctor> doctorsList;

  DoctorsSuccess(this.doctorsList);
}
class DoctorsFailure extends HomeState{
  final String errMessage;

  DoctorsFailure(this.errMessage);
}