import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/widgets/buttons/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MessageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MessageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode(BuildContext context) =>
        Theme.of(context).brightness == Brightness.dark;
    final iconColor = AppColors.kPrimary.withOpacity(0.4);

    return AppBar(
      centerTitle: false,
      title: const Text('Discussions'),
      actions: [
        CustomIconButton(
          onTap: () {},
          icon: AppAssets.kAdd,
          color: isDarkMode(context) ? Colors.black : iconColor,
        ),
        SizedBox(width: 10.w),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
