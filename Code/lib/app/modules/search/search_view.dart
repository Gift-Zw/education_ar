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
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  List<GeoModel> models = List<GeoModel>.from(geoModels);
  TextEditingController searchController = TextEditingController();

  void filterCategory(ModelCategory category) {
    setState(() {
      models = List<GeoModel>.from(geoModels);
      models = models
          .where((model) => model.category.name == category.name)
          .toList();
    });
  }

  void searchModels(String text) {
    setState(() {
      models.clear();
      for (var model in geoModels) {
        if (model.name.toLowerCase().contains(text.toLowerCase()) ||
            model.category.name.toLowerCase().contains(text.toLowerCase())) {
          models.add(model);
        }
      }
    });
  }

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
                    child: TextField(
                      controller: searchController,
                      enabled: true,
                      onChanged: ((value) => searchModels(value)),
                      decoration: InputDecoration(
                        hintText: 'Search for 3D models, names, etc ',
                        prefixIcon: IconButton(
                          onPressed: null,
                          icon: SvgPicture.asset(
                            AppAssets.kSearch,
                            colorFilter: ColorFilter.mode(
                              isDarkMode(context) ? Colors.white : Colors.black,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
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
                      onTap: () {
                        filterCategory(dummyModelCategories[index]);
                      },
                      index: index,
                      category: dummyModelCategories[index],
                      isSelected: false,
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 10.w),
                  itemCount: dummyMghodelCategories.length,
                ),
              ),
              SizedBox(height: 25.h),
              SizedBox(
                  height: 475.h,
                  child: GridView.builder(
                    itemCount: models.length,
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
                        model: models[index],
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
