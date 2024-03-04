import 'package:eden_learning_app/app/data/constants/constants.dart';

class Onboarding {
  String title;
  String description;
  String image;
  Onboarding({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<Onboarding> onboardingList = [
  Onboarding(
    title: 'Interactive Lessons',
    image: AppAssets.kOnboarding1,
    description:
        'Find dozens of lesson plans,modules and educational contents in 3D and AR ',
  ),
  Onboarding(
    title: 'Classrooms',
    image: AppAssets.kOnboarding2,
    description:
        'Setup classes according to categories, and share work with everyone----place for Discussions.',
  ),
  Onboarding(
    image: AppAssets.kOnboarding3,
    title: 'Ready to use?',
    description: 'Ready for take off, Explore and Enjoy!!!!.',
  ),
];
