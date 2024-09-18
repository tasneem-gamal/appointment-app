import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_body.g.dart';

@JsonSerializable()
class LoginResponseBody {
  final String? message;
  @JsonKey(name: 'Data')
  final UserData? userData;
  final bool? status;
  final int? code;

  LoginResponseBody({required this.message, required this.userData, required this.status, required this.code});

  factory LoginResponseBody.fromJson(Map<String, dynamic> json) => 
    _$LoginResponseBodyFromJson(json);

}
@JsonSerializable()
class UserData {
  final String? token;
  @JsonKey(name: 'username')
  final String? userName;

  UserData({required this.token, required this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) => 
    _$UserDataFromJson(json);

}