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

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 200.h),
              Center(
                child: Text(
                  'Welcome Back',
                  style: AppTypography.kBold32,
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Text(
                  'Sign in to access Geographic AR  Learning Platform',
                  style: AppTypography.kLight16,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 50.h),
              AuthField(
                controller: _emailController,
                hintText: 'Enter Email',
              ),
              SizedBox(height: AppSpacing.fortyVertical),
              AuthField(
                controller: _passwordController,
                hintText: 'Enter Password',
                obscureText: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: CustomTextButton(
                  onPressed: () {},
                  text: 'Forget Password?',
                ),
              ),
              SizedBox(height: AppSpacing.twentyVertical),
              ShakeWidget(
                key: _shakeKey,
                shakeOffset: 10.0,
                shakeDuration: const Duration(milliseconds: 500),
                child: PrimaryButton(
                  onTap: () async {
                    final FirebaseAuth _auth = FirebaseAuth.instance;
                    final SharedPreferences pref =
                        await SharedPreferences.getInstance();
                    try {
                      UserCredential userCredential =
                          await _auth.signInWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text,
                      );
                      if (userCredential.user != null) {
                        await pref.setBool('isLogged', true);
                        await pref.setString('email', _emailController.text);
                      }
                      Get.offAllNamed<dynamic>(AppRoutes.getLandingPageRoute());
                      // ignore: avoid_catches_without_on_clauses
                    } catch (e) {
                      Get.showSnackbar(
                        GetSnackBar(
                          title: 'Log In Failure',
                          message: e.toString(),
                          icon: const Icon(Icons.refresh),
                          duration: const Duration(seconds: 3),
                        ),
                      );
                      _shakeKey.currentState?.shake();
                    }
                  },
                  text: 'Login',
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
