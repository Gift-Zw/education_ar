import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/category.dart';
import 'package:eden_learning_app/app/models/geo_model.dart';
import 'package:eden_learning_app/app/modules/auth/components/custom_chips.dart';
import 'package:eden_learning_app/app/modules/home/components/model_card.dart';
import 'package:eden_learning_app/app/modules/home/components/search_field.dart';
import 'package:eden_learning_app/app/modules/search/components/models_grid.dart';
import 'package:eden_learning_app/app/modules/search/components/filter_sheet.dart';
import 'package:eden_learning_app/app/modules/search/components/model_card.dart';
import 'package:eden_learning_app/app/modules/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode(BuildContext context) =>
        Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text('AR Models'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(
                    child: SearchField(
                      controller: TextEditingController(),
                      hint: 'Search for 3D models, names, etc.',
                      isEnabled: true,
                    ),
                  ),
                  SizedBox(width: 10.w),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Text('Filter By Category', style: AppTypography.kBold16),
                  const Spacer(),
                ],
              ),
              SizedBox(height: AppSpacing.tenVertical),
              SizedBox(
                height: 50.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    return CustomChips(
                      onTap: () {},
                      index: index,
                      category: dummyModelCategories[index],
                      isSelected: false,
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 10.w),
                  itemCount: 8,
                ),
              ),
              SizedBox(height: 25.h),
              SizedBox(
                  height: 475.h,
                  child: GridView.builder(
                    itemCount: geoModels.length,
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 150 / 215,
                      crossAxisSpacing: AppSpacing.twentyHorizontal,
                      mainAxisSpacing: AppSpacing.twentyVertical,
                    ),
                    itemBuilder: (context, index) {
                      return ModelGridCard(
                        model: geoModels[index],
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
