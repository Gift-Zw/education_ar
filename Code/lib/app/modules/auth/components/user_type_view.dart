import 'package:animate_do/animate_do.dart';
import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/data/helpers/enums/user_type.dart';
import 'package:eden_learning_app/app/modules/auth/components/user_type_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UserTypeView extends StatefulWidget {
  final void Function(UserType)? onUserTypeSelected;
  const UserTypeView({super.key, this.onUserTypeSelected});

  @override
  State<UserTypeView> createState() => _UserTypeViewState();
}

class _UserTypeViewState extends State<UserTypeView> {
  UserType userType = UserType.teacher;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 120.h),
          FadeInLeft(
            duration: const Duration(milliseconds: 1000),
            child: Text(
              'Join Geography AR as a…',
              style: AppTypography.kBold32,
            ),
          ),
          SizedBox(height: AppSpacing.tenVertical),
          FadeInLeft(
            duration: const Duration(milliseconds: 1000),
            child: Text(
              'Create and add classrooms as a teacher or\nbrowse AR models as a student.',
              style: AppTypography.kLight16,
            ),
          ),
          SizedBox(height: AppSpacing.fortyVertical),
          FadeInRight(
            duration: const Duration(milliseconds: 1000),
            child: SizedBox(
              height: 320.h,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: UserTypeCard(
                      onTap: () {
                        setState(() {
                          userType = UserType.teacher;
                        });
                        widget.onUserTypeSelected?.call(userType);
                      },
                      isSelected: userType == UserType.teacher,
                      image: AppAssets.kTeacher,
                      text: UserType.teacher.name.capitalizeFirst.toString(),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: UserTypeCard(
                      onTap: () {
                        setState(() {
                          userType = UserType.student;
                        });
                        widget.onUserTypeSelected?.call(userType);
                      },
                      isSelected: userType == UserType.student,
                      image: AppAssets.kStudent,
                      text: UserType.student.name.capitalizeFirst.toString(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
