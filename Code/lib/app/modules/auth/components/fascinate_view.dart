import 'package:animate_do/animate_do.dart';
import 'package:eden_learning_app/app/data/constants/constants.dart';
import 'package:eden_learning_app/app/models/category.dart';
import 'package:eden_learning_app/app/modules/auth/components/custom_chips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FascinateView extends StatefulWidget {
  final Function(List<ModelCategory>?)? onChanged;
  const FascinateView({required this.onChanged, super.key});

  @override
  State<FascinateView> createState() => _FascinateViewState();
}

class _FascinateViewState extends State<FascinateView> {
  List<ModelCategory> selectedCategories = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 120.h),
          FadeInLeft(
            duration: const Duration(milliseconds: 1000),
            child: Center(
              child: Text(
                'What fascinates you?',
                style: AppTypography.kBold32,
              ),
            ),
          ),
          SizedBox(height: AppSpacing.tenVertical),
          FadeInLeft(
            duration: const Duration(milliseconds: 1000),
            child: Center(
              child: Text(
                'To give you a personalized experience,\nlet us know your interests.',
                textAlign: TextAlign.center,
                style: AppTypography.kLight16,
              ),
            ),
          ),
          SizedBox(height: 70.h),
          Center(
            child: Wrap(
              spacing: 15.w,
              runSpacing: 20.h,
              alignment: WrapAlignment.spaceBetween,
              children: List.generate(
                dummyModelCategories.length,
                (index) => CustomChips(
                  onTap: () {
                    if (selectedCategories
                        .contains(dummyModelCategories[index])) {
                      selectedCategories.remove(dummyModelCategories[index]);
                    } else {
                      selectedCategories.add(dummyModelCategories[index]);
                      widget.onChanged!(selectedCategories);
                    }
                    setState(() {});
                  },
                  index: index,
                  category: dummyModelCategories[index],
                  isSelected:
                      selectedCategories.contains(dummyModelCategories[index]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
