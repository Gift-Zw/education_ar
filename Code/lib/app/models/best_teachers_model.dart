import 'package:eden_learning_app/app/data/constants/constants.dart';

class BestTeachersModel {
  String name;
  String bio;
  String image;
  int position;
  BestTeachersModel({
    required this.name,
    required this.bio,
    required this.image,
    required this.position,
  });
}

List<BestTeachersModel> bestTeachers = [
  BestTeachersModel(
    name: 'Tadiwa Zinzombe',
    bio: 'Volcanicity',
    image: AppAssets.kUser3,
    position: 1,
  ),
  BestTeachersModel(
    name: 'Gift Mugaragumbo',
    bio: 'Geology',
    image: AppAssets.kUser6,
    position: 2,
  ),
  BestTeachersModel(
    name: 'John Moyo',
    bio: 'Deserts',
    image: AppAssets.kUser7,
    position: 3,
  ),
];
