import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/auth/components/fascinate_view.dart';
import 'package:eden_learning_app/app/modules/auth/components/setup_complete_view.dart';
import 'package:eden_learning_app/app/modules/auth/components/setup_store_view.dart';
import 'package:eden_learning_app/app/modules/auth/components/user_type_view.dart';
import 'package:eden_learning_app/app/modules/onboarding/components/custom_indicator.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:eden_learning_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> with TickerProviderStateMixin {
  final PageController _pageController = PageController();

  late AnimationController rippleController;
  late AnimationController scaleController;
  late Animation<double> rippleAnimation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();
    rippleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    scaleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Get.offAllNamed<dynamic>(AppRoutes.getLandingPageRoute());
            }
          });

    rippleAnimation =
        Tween<double>(begin: 80.0, end: 90.0).animate(rippleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              rippleController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              rippleController.forward();
            }
          });

    scaleAnimation =
        Tween<double>(begin: 1.0, end: 30.0).animate(scaleController);

    rippleController.forward();
  }

  @override
  void dispose() {
    rippleController.dispose();
    scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                WaveCard(height: 495.h),
                PageView(
                  controller: _pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (index) {},
                  children: [
                    UserTypeView(
                      onUserTypeSelected: (userType) {
                        debugPrint(userType.toString());
                      },
                    ),
                    const SetupCompleteView(),
                  ],
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.all(AppSpacing.twentyVertical),
              child: PrimaryButton(
                onTap: () {
                  FocusScope.of(context).unfocus();
                  Future<void>.delayed(const Duration(milliseconds: 200)).then(
                    (value) => {
                      Get.offAllNamed<dynamic>(
                          AppRoutes.getNewSignUpPageRoute())
                    },
                  );
                },
                text: 'Continue',
              )),
        ],
      ),
    );
  }
}
