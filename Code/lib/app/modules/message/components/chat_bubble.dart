import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/discussion_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatBubble extends StatelessWidget {
  final DiscussionMessage chat;
  const ChatBubble({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode(BuildContext context) =>
        Theme.of(context).brightness == Brightness.dark;

    return Align(
      alignment: chat.userName == 'receiver'
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: chat.userName == 'receiver'
              ? (isDarkMode(context)
                  ? AppColors.kSecondary
                  : AppColors.kPrimary)
              : (isDarkMode(context)
                  ? AppColors.kWhite
                  : AppColors.kPrimary.withOpacity(0.08)),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          children: [
            Text(
              chat.userName,
              style: AppTypography.kLight14.copyWith(
                fontWeight: FontWeight.bold,
                color: chat.userName == 'receiver'
                    ? AppColors.kWhite
                    : Colors.black,
              ),
            ),
            Text(
              chat.message,
              style: AppTypography.kLight14.copyWith(
                color: chat.userName == 'receiver'
                    ? AppColors.kWhite
                    : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
