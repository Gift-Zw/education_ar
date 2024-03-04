import 'package:animate_do/animate_do.dart';
import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/auth/components/auth_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetupStoreView extends StatefulWidget {
  final Function(String?)? onChanged;
  const SetupStoreView({super.key, this.onChanged});

  @override
  State<SetupStoreView> createState() => _SetupStoreViewState();
}

class _SetupStoreViewState extends State<SetupStoreView> {
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.twentyHorizontal),
      child: Column(
        children: [
          const Spacer(),
          Image.asset(AppAssets.kStoreSetup),
          SizedBox(height: 90.h),
          FadeInRight(
            duration: const Duration(milliseconds: 1000),
            child: Text(
              'Create your profile.',
              style: AppTypography.kBold32,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: AppSpacing.thirtyVertical),
          FadeInLeft(
            duration: const Duration(milliseconds: 1000),
            child: AuthField(
              controller: firstName,
              hintText: 'First Name',
              onChanged: (value) {
                widget.onChanged!(value);
              },
            ),
          ),
          SizedBox(height: 10.h),
          FadeInLeft(
            duration: const Duration(milliseconds: 1000),
            child: AuthField(
              controller: lastName,
              hintText: 'Last Name',
              onChanged: (value) {
                widget.onChanged!(value);
              },
            ),
          ),
          SizedBox(height: 10.h),
          FadeInLeft(
            duration: const Duration(milliseconds: 1000),
            child: AuthField(
              controller: email,
              hintText: 'Email',
              onChanged: (value) {
                widget.onChanged!(value);
              },
            ),
          ),
          SizedBox(height: 10.h),
          FadeInLeft(
            duration: const Duration(milliseconds: 1000),
            child: AuthField(
              controller: password,
              hintText: 'Password',
              onChanged: (value) {
                widget.onChanged!(value);
              },
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
