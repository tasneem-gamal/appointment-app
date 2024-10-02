part of 'home_cubit.dart';

class SpecializationState {}
class SpecializationStateInitial extends SpecializationState{}
class SpecializationStateLoading extends SpecializationState{}
class SpecializationStateSuccess extends SpecializationState{
  final SpecializationResponseModel specializationResponseModel;

  SpecializationStateSuccess(this.specializationResponseModel);
}
class SpecializationStateFailure extends SpecializationState{
  final String errMessage;

  SpecializationStateFailure(this.errMessage);
}