class SignRequestBody {
  final String name;
  final String email;
  final int gender;
  final String password;
  final String passwordConfirmation;
  final String phoneNumber;

  SignRequestBody({required this.name, required this.email, required this.gender, required this.password, required this.passwordConfirmation, required this.phoneNumber});



  Map<String, dynamic> toJson(){
    return {
      'name' : name,
      'gender' : gender,
      'password' : password,
      'password_confirmation' : passwordConfirmation,
      'email' : email,
      'phone' : phoneNumber      
    };
  }
}