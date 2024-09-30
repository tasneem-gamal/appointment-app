import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/routing/app_router.dart';
import 'package:appointment_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  setupGetIt();
  // to fix .sp font size in flutter_screen util in release mode
  ScreenUtil.ensureScreenSize;
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
