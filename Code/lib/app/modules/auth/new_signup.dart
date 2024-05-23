import 'package:animate_do/animate_do.dart';
import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/auth/components/auth_field.dart';
import 'package:eden_learning_app/app/modules/auth/components/custom_social_button.dart';
import 'package:eden_learning_app/app/modules/auth/components/divider_with_text.dart';
import 'package:eden_learning_app/app/modules/widgets/animations/shake_animation.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:eden_learning_app/app/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewSignUpView extends StatefulWidget {
  const NewSignUpView({super.key});

  @override
  State<NewSignUpView> createState() => _SignInViewState();
}

class _SignInViewState extends State<NewSignUpView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final TextEditingController fullName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController repeatPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 130.h),
              Center(
                child: Text(
                  'Create Account',
                  style: AppTypography.kBold32,
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Text(
                  'Create account to access Geographic AR  Learning Platform',
                  style: AppTypography.kLight16,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 50.h),
              FadeInLeft(
                duration: const Duration(milliseconds: 1000),
                child: AuthField(
                  controller: fullName,
                  hintText: 'Full Name',
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 20.h),
              FadeInLeft(
                duration: const Duration(milliseconds: 1000),
                child: AuthField(
                  controller: email,
                  hintText: 'Email',
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 20.h),
              FadeInLeft(
                duration: const Duration(milliseconds: 1000),
                child: AuthField(
                  controller: password,
                  obscureText: true,
                  hintText: 'Password',
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 20.h),
              FadeInLeft(
                duration: const Duration(milliseconds: 1000),
                child: AuthField(
                  controller: repeatPassword,
                  obscureText: true,
                  hintText: 'Repeat Password',
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: AppSpacing.twentyVertical),
              ShakeWidget(
                key: _shakeKey,
                shakeOffset: 10.0,
                shakeDuration: const Duration(milliseconds: 500),
                child: PrimaryButton(
                  onTap: () async {
                    if (password.text == repeatPassword.text) {
                      final FirebaseAuth _auth = FirebaseAuth.instance;
                      final SharedPreferences pref =
                          await SharedPreferences.getInstance();
                      try {
                        await _auth.createUserWithEmailAndPassword(
                          email: email.text,
                          password: password.text,
                        );

                        await pref.setBool('isLogged', true);
                        await pref.setString('email', email.text);
                        await pref.setString('fullName', fullName.text);

                        Get.offAllNamed<dynamic>(
                            AppRoutes.getLandingPageRoute());
                        // ignore: avoid_catches_without_on_clauses
                      } catch (e) {
                        Get.showSnackbar(
                          GetSnackBar(
                            title: 'Sign Up Failed',
                            message: e.toString(),
                            icon: const Icon(Icons.refresh),
                            duration: const Duration(seconds: 3),
                          ),
                        );
                        _shakeKey.currentState?.shake();
                      }
                    } else {
                      Get.showSnackbar(
                        const GetSnackBar(
                          title: 'Sign Up Failed',
                          message: 'Passwords do not match',
                          icon: Icon(Icons.refresh),
                          duration: Duration(seconds: 3),
                        ),
                      );
                    }
                  },
                  text: 'Sign Up',
                ),
              ),
              SizedBox(height: AppSpacing.twentyVertical),
            ],
          ),
        ),
      ),
    );
  }
}
