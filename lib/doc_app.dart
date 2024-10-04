import 'package:appointment_app/core/routing/app_router.dart';
import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorsManager.kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Inter',
          checkboxTheme: CheckboxThemeData(
            side: const BorderSide(
              color: Color(0xffC2C2C2),
            ),
            checkColor: WidgetStateProperty.all(Colors.green),
            fillColor: WidgetStateProperty.all(Colors.white)
          )
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.loginView,
        onGenerateRoute: appRouter.generateRoutes,
      ),
    );
  }
}