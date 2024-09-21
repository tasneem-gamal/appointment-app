class SignRequestBody {
  final String email;
  final String password;
  final String phoneNumber;

  SignRequestBody({required this.email, required this.password, required this.phoneNumber});

  Map<String, dynamic> toJson(){
    return {
      'password' : password,
      'email' : email,
      'phone' : phoneNumber      
    };
  }
}