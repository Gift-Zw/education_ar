import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/modules/home/components/best_teachers.dart';
import 'package:eden_learning_app/app/modules/home/components/model_list.dart';
import 'package:eden_learning_app/app/modules/home/components/search_field.dart';
import 'package:eden_learning_app/app/modules/search/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h),
              Text('Hi Tadiwa', style: AppTypography.kBold32),
              Text(
                'What do you want to view? ☀️',
                style: AppTypography.kLight16,
              ),
              SizedBox(height: AppSpacing.thirtyVertical),
              GestureDetector(
                onTap: () {
                  Get.to<void>(() => const SearchView());
                },
                child: SearchField(
                  controller: TextEditingController(),
                  hint: 'Search for 3D models, names, etc.',
                ),
              ),
              SizedBox(height: 26.h),
              Text(
                'Latest Discussions',
                style: AppTypography.kBold18,
              ),
              SizedBox(height: AppSpacing.twentyVertical),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     CustomMenuCard(
              //       isSelected: selectedIndex == 0,
              //       onTap: () => {},
              //       icon: AppAssets.kPopular,
              //       title: 'Popular',
              //     ),
              //     CustomMenuCard(
              //       isSelected: selectedIndex == 1,
              //       onTap: () => handleCardTap(1),
              //       icon: AppAssets.kRecords,
              //       title: 'Records',
              //     ),
              //     CustomMenuCard(
              //       isSelected: selectedIndex == 2,
              //       onTap: () => handleCardTap(2),
              //       icon: AppAssets.kStatistics,
              //       title: 'Statistics',
              //     ),
              //     CustomMenuCard(
              //       isSelected: selectedIndex == 3,
              //       onTap: () => handleCardTap(3),
              //       icon: AppAssets.kStudents,
              //       title: 'Students',
              //     ),
              //   ],
              // ),
              SizedBox(height: AppSpacing.fiftyVertical),
              const CourseList(),
              SizedBox(height: 60..h),
              const BestTeachers(),
              SizedBox(height: AppSpacing.thirtyVertical),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  int selectedIndex = 0;
}
