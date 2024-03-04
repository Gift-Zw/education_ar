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
  ModelCategory(id: '1', name: 'Mountains', image: AppAssets.kActivity),
  ModelCategory(
    id: '2',
    name: 'Rivers',
    image: AppAssets.kActivity,
  ),
  ModelCategory(
    id: '3',
    name: 'Forests',
    image: AppAssets.kActivity,
  ),
  ModelCategory(
    id: '4',
    name: 'Deserts',
    image: AppAssets.kActivity,
  ),
  ModelCategory(
    id: '5',
    name: 'Oceans',
    image: AppAssets.kActivity,
  ),
];
