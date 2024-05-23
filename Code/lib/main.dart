// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eden_learning_app/app/controllers/theme_controller.dart';
import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/data/helpers/theme_helper.dart';
import 'package:eden_learning_app/app/routes/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(defaultOverlay);
  SharedPreferences pref = await SharedPreferences.getInstance();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  runApp(Main(
    pref: pref,
  ));
}

class Main extends StatelessWidget {
  SharedPreferences pref;
  Main({
    required this.pref,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());

    debugPrint(themeController.theme);
    return ScreenUtilInit(
      designSize: const Size(375, 844),
      builder: (context, child) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: GetMaterialApp(
            title: 'Geography AR',
            debugShowCheckedModeBanner: false,
            scrollBehavior: const ScrollBehavior()
                .copyWith(physics: const BouncingScrollPhysics()),
            defaultTransition: Transition.fadeIn,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: getThemeMode(themeController.theme),
            locale: const Locale('en_US'),
            initialRoute: (pref.getBool('isLogged') != null)
                ? AppRoutes.getLandingPageRoute()
                : AppRoutes.getOnboardingRoute(),
            getPages: AppRoutes.routes,
          ),
        );
      },
    );
  }
}
