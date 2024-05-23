import 'package:animate_do/animate_do.dart';
import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/auth/components/auth_field.dart';
import 'package:eden_learning_app/app/modules/widgets/buttons/primary_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetupStoreView extends StatefulWidget {
  final Function(String?)? onChanged;
  const SetupStoreView({super.key, this.onChanged});

  @override
  State<SetupStoreView> createState() => _SetupStoreViewState();
}

class _SetupStoreViewState extends State<SetupStoreView> {
  final TextEditingController fullName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController repeatPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.twentyHorizontal),
      child: Column(
        children: [
          SizedBox(height: 130.h),
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
              controller: fullName,
              hintText: 'Full Name',
              onChanged: (value) {
                widget.onChanged!(value);
              },
            ),
          ),
          SizedBox(height: 20.h),
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
          SizedBox(height: 20.h),
          FadeInLeft(
            duration: const Duration(milliseconds: 1000),
            child: AuthField(
              controller: password,
              obscureText: true,
              hintText: 'Password',
              onChanged: (value) {
                widget.onChanged!(value);
              },
            ),
          ),
          SizedBox(height: 20.h),
          FadeInLeft(
            duration: const Duration(milliseconds: 1000),
            child: AuthField(
              controller: repeatPassword,
              obscureText: true,
              hintText: 'Repeat Password',
              onChanged: (value) {
                widget.onChanged!(value);
              },
            ),
          ),
          SizedBox(height: 30.h),
          PrimaryButton(
            onTap: () async {
              final FirebaseAuth _auth = FirebaseAuth.instance;
              try {
                UserCredential userCredential =
                    await _auth.createUserWithEmailAndPassword(
                  email: email.text,
                  password: password.text,
                );
                SnackBar(content: Text('done'));
              } catch (e) {
                SnackBar(
                  content: Text('Failed to sign up: $e'),
                );
                return null;
              }
            },
            text: 'sign Up',
          )
        ],
      ),
    );
  }
}
