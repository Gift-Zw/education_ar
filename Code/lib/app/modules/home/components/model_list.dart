import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/geo_model.dart';

import 'package:eden_learning_app/app/modules/home/components/model_card.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseList extends StatelessWidget {
  const CourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Latest Models', style: AppTypography.kBold18),
            const Spacer(),
            CustomTextButton(
              onPressed: () {},
              text: 'See All',
              color: AppColors.kSecondary.withOpacity(0.3),
            ),
          ],
        ),
        SizedBox(height: AppSpacing.twentyVertical),
        SizedBox(
          height: 280.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            itemBuilder: (context, index) {
              return ModelCard(
                model: geoModels[index],
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 30.w),
            itemCount: geoModels.length,
          ),
        ),
      ],
    );
  }
}
