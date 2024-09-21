
class SignResponseBody {
  final String? message;
  final UserData? userData;
  final bool? status;
  final int? code;

  SignResponseBody({required this.message, required this.userData, required this.status, required this.code});

  factory SignResponseBody.fromJson(Map<String, dynamic> json) {
    return SignResponseBody(
      message: json['message'] as String?,
      userData: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool?,
      code: json['code'] as int?,
    );
  }

}

class UserData {
  final String? token;
  final String? userName;

  UserData({required this.token, required this.userName});

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      token: json['token'] as String?, 
      userName: json['username'] as String?,
    );
  }

}