import 'package:eden_learning_app/app/controllers/theme_controller.dart';
import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/home/components/model_card.dart';
import 'package:eden_learning_app/app/modules/message/message_view.dart';
import 'package:eden_learning_app/app/modules/profile/components/profile_image_card.dart';
import 'package:eden_learning_app/app/modules/profile/components/setting_tile.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:eden_learning_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode(BuildContext context) =>
        Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode(context) ? Colors.black : AppColors.kPrimary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          SizedBox(width: AppSpacing.twentyHorizontal),
        ],
      ),
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: isDarkMode(context)
                      ? AppColors.kSecondary
                      : AppColors.kWhite,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(AppSpacing.radiusThirty),
                  ),
                ),
                margin: EdgeInsets.only(top: 40.h),
                child: Column(
                  children: [
                    SizedBox(height: 65.h),
                    Text(
                      'Tadiwa Zinzombe',
                      style: AppTypography.kBold32,
                    ),
                    Text(
                      'Teacher',
                      style: AppTypography.kLight30,
                    ),
                    SizedBox(height: AppSpacing.twentyFiveVertical),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      decoration: BoxDecoration(
                        color:
                            isDarkMode(context) ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(AppSpacing.radiusThirty),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SettingTile(
                            icon: AppAssets.kEmail,
                            title: 'Email',
                            subtitle: 'tadiwa@gmail.com',
                            onTap: () {},
                          ),
                          const Divider(height: 0.5),
                          SettingTile(
                            icon: AppAssets.kEmail,
                            title: 'Cell',
                            subtitle: '0776149765',
                            onTap: () {},
                          ),
                          const Divider(height: 0.5),
                          SettingTile(
                            icon: AppAssets.kPassword,
                            title: 'Password',
                            subtitle: 'Last changed 3 months ago',
                            onTap: () {},
                          ),
                          const Divider(),
                          GetBuilder<ThemeController>(
                            init: ThemeController(),
                            initState: (_) {},
                            builder: (_) {
                              final isLightMode = _.theme == 'light';
                              return SettingTile(
                                icon: AppAssets.kTheme,
                                isSwitch: true,
                                title: 'Light Mode',
                                switchValue: isLightMode,
                                onChanged: (value) {
                                  if (isLightMode) {
                                    _.setTheme('dark');
                                  } else {
                                    _.setTheme('light');
                                  }
                                },
                              );
                            },
                          ),
                          const Divider(),
                          SizedBox(
                            height: 30.h,
                          ),
                          PrimaryButton(
                              onTap: () async {
                                final SharedPreferences pref =
                                    await SharedPreferences.getInstance();

                                await pref.remove('isLogged');
                                await pref.remove('email');
                                await pref.remove('fullName');
                                Get.offAllNamed<dynamic>(
                                    AppRoutes.getOnboardingRoute());
                              },
                              text: 'Sign Out'),
                          SizedBox(
                            height: 90.h,
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const ProfileImageCard(),
            ],
          ),
        ),
      ),
    );
  }
}
