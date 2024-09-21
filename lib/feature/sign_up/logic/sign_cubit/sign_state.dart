part of 'sign_cubit.dart';

class SignState {}
class SignInitial extends SignState{}
class SignLoading extends SignState{}
class SignFailure extends SignState{
  final String errMessage;

  SignFailure(this.errMessage);
}
class SignSuccess extends SignState{
  final SignResponseBody signResponseBody;

  SignSuccess(this.signResponseBody);
}
