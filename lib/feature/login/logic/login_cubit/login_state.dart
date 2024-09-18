part of 'login_cubit.dart';

class LoginState {}
class LoginStateInitial extends LoginState{}
class LoginStateLoading extends LoginState{}
class LoginStateSuccess extends LoginState{
  final LoginResponseBody loginResponseBody;

  LoginStateSuccess(this.loginResponseBody);
}
class LoginStateFailure extends LoginState{
  final String errMessage;

  LoginStateFailure(this.errMessage);

}
