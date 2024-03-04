import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/geo_model.dart';
import 'package:eden_learning_app/app/modules/course_detail/course_detail_view.dart';
import 'package:eden_learning_app/app/modules/widgets/containers/primary_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ModelCard extends StatelessWidget {
  final GeoModel model;
  const ModelCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to<Widget>(() => ModelDetailView(
              model: model,
            ));
      },
      child: PrimaryContainer(
        width: 200.w,
        height: 200.h,
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Hero(
                tag: model.imgUrl,
                child: Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.all(10.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(AppSpacing.radiusFifteen),
                    ),
                    image: DecorationImage(
                      image: AssetImage(model.imgUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: SizedBox(height: 2),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                padding: EdgeInsets.all(AppSpacing.tenVertical),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.category.name,
                      style: AppTypography.kBold14
                          .copyWith(color: AppColors.kPrimary),
                    ),
                    SizedBox(height: AppSpacing.tenVertical),
                    Text(
                      model.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTypography.kBold20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
