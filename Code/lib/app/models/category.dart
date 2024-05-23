import 'package:eden_learning_app/app/data/constants/constants.dart';

class ModelCategory {
  String id;
  String name;
  String image;
  ModelCategory({
    required this.id,
    required this.name,
    required this.image,
  });
}

List<ModelCategory> dummyModelCategories = [
  ModelCategory(id: '1', name: 'Mountains', image: AppAssets.categoryMountain),
  ModelCategory(
    id: '2',
    name: 'Rivers',
    image: AppAssets.categoryRivers,
  ),
  ModelCategory(
    id: '3',
    name: 'Volcanoes',
    image: AppAssets.categoryVolcanoes,
  ),
  ModelCategory(
    id: '4',
    name: 'Rocks',
    image: AppAssets.categoryrocks,
  ),
  ModelCategory(
    id: '5',
    name: 'Canyons',
    image: AppAssets.categoryCanyons,
  ),
  ModelCategory(
    id: '6',
    name: 'Planets',
    image: AppAssets.categoryPlanets,
  ),
];
