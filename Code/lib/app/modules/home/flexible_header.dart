import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/geo_model.dart';

import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FlexibleHeader extends StatelessWidget {
  final GeoModel model;
  const FlexibleHeader({required this.model, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 365.h,
      automaticallyImplyLeading: false,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          final percent = (constraints.maxHeight - kToolbarHeight) /
              (365.h - kToolbarHeight);
          final scale = 1.0 - percent.clamp(0.0, 1.0) * 0.3;
          return Stack(
            fit: StackFit.expand,
            children: [
              Hero(
                tag: model.imgUrl,
                child: Container(
                  height: 280.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(model.imgUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: AppSpacing.tenHorizontal,
                top: AppSpacing.twentyVertical,
                child: CustomIconButton(
                  onTap: () {
                    Get.back<void>();
                  },
                  iconColor: AppColors.kWhite,
                  color: AppColors.kPrimary.withOpacity(0.41),
                  icon: AppAssets.kArrowBackIos,
                ),
              ),
              Positioned(
                right: AppSpacing.tenHorizontal,
                top: AppSpacing.twentyVertical,
                child: CustomIconButton(
                  iconColor: AppColors.kWhite,
                  color: AppColors.kPrimary.withOpacity(0.4),
                  icon: AppAssets.kMoreVert,
                  onTap: () {},
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
