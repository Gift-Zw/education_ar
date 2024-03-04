import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/geo_model.dart';

import 'package:eden_learning_app/app/modules/course_detail/course_detail_view.dart';
import 'package:eden_learning_app/app/modules/widgets/containers/primary_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ModelGridCard extends StatelessWidget {
  final GeoModel model;
  const ModelGridCard({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: GestureDetector(
              onTap: () {
                Get.to<Widget>(() => ModelDetailView(
                      model: model,
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(AppSpacing.radiusFifteen),
                  ),
                  image: DecorationImage(
                    image: AssetImage(model.imgUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.kBold16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
