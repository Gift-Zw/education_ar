import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/discussion_model.dart';
import 'package:eden_learning_app/app/modules/message/components/chat_bubble.dart';
import 'package:eden_learning_app/app/modules/message/components/message_appbar.dart';
import 'package:eden_learning_app/app/modules/message/components/message_field.dart';
import 'package:eden_learning_app/app/modules/profile/components/profile_image_card.dart';
import 'package:eden_learning_app/app/modules/widgets/buttons/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConversationView extends StatelessWidget {
  final Discussion chat;
  const ConversationView({required this.chat, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconColor = AppColors.kPrimary.withOpacity(0.4);
    bool isDarkMode(BuildContext context) =>
        Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Discussions'),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppSpacing.radiusThirty),
          ),
          color: isDarkMode(context) ? Colors.black : Colors.white,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30.r),
            ),
            color: AppColors.kPrimary.withOpacity(0.4),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(AppSpacing.twentyVertical),
                child: Row(
                  children: [
                    Hero(
                      tag: chat.imageURL,
                      child: ProfileImageCard(
                        image: chat.imageURL,
                        size: 60.h,
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(chat.name, style: AppTypography.kBold16),
                        SizedBox(height: 6.h),
                        // Text('Active Now', style: AppTypography.kLight14),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ColoredBox(
                  color: isDarkMode(context) ? Colors.black : Colors.white,
                  child: ListView.separated(
                    padding: EdgeInsets.all(AppSpacing.twentyVertical),
                    itemBuilder: (context, index) {
                      return ChatBubble(
                        chat: discussionMessages[index],
                      );
                    },
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 10.h),
                    itemCount: discussionMessages.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: const MessageField(),
    );
  }
}
