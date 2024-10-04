import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/helpers/constants.dart';
import 'package:appointment_app/core/helpers/shared_preference.dart';
import 'package:appointment_app/core/routing/app_router.dart';
import 'package:appointment_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  // to fix .sp font size in flutter_screen util in release mode
  ScreenUtil.ensureScreenSize;
  await checkIfLoggedInUser();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

checkIfLoggedInUser() async{
  String? userToken = await SharedPreferenceHelper.getString(SharedPreferencesKeys.userToken);
  if(userToken != null && userToken.isNotEmpty){
    Constants.isLoggedIn = true;
  } else {
    Constants.isLoggedIn = false;
  }
}