part of 'home_cubit.dart';

class HomeState {}
class SpecializationStateInitial extends HomeState{}
class SpecializationStateLoading extends HomeState{}
class SpecializationStateSuccess extends HomeState {
  final SpecializationsResponseModel specializationsResponseModel;

  SpecializationStateSuccess(this.specializationsResponseModel);
}
class SpecializationStateFailure extends HomeState{
  final String errMessage;

  SpecializationStateFailure(this.errMessage);
}

