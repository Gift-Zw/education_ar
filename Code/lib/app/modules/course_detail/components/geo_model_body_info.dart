import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/geo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ModelBodyInfo extends StatelessWidget {
  final GeoModel model;
  const ModelBodyInfo({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30..h),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.twentyHorizontal,
          ),
          child: Text(
            model.name,
            style: AppTypography.kBold24,
          ),
        ),
        SizedBox(height: AppSpacing.tenVertical),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.twentyHorizontal,
          ),
          child: Text(
            '${model.category}',
            style: AppTypography.kLight14,
          ),
        ),
        SizedBox(height: 25.h),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.twentyHorizontal,
          ),
          child: Text(
            model.details,
            style: AppTypography.kLight16,
          ),
        ),
        SizedBox(height: AppSpacing.twentyVertical),
        SizedBox(height: 30.h),
      ],
    );
  }
}
