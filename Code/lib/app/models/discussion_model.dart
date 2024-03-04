// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:eden_learning_app/app/data/constants/constants.dart';

class Discussion {
  String name;
  String description;
  String imageURL;
  List<DiscussionMessage> messages = [];

  Discussion({
    required this.name,
    required this.description,
    required this.imageURL,
  });
}

class DiscussionMessage {
  String message;
  String userName;
  DateTime date;
  DiscussionMessage({
    required this.message,
    required this.userName,
    required this.date,
  });
}

List<Discussion> geographyDiscussions = [
  Discussion(
    name: 'Exploring Rainforests',
    description: 'Learn about the diverse ecosystems of rainforests.',
    imageURL: AppAssets.kOnboarding1,
  ),
  Discussion(
    name: 'Mount Everest: The Tallest Peak',
    description: 'Discuss the geography and challenges of Mount Everest.',
    imageURL: AppAssets.kOnboarding1,
  ),
  Discussion(
    name: 'Volcanoes Around the World',
    description: 'Explore different types of volcanoes and their locations.',
    imageURL: AppAssets.kOnboarding1,
  ),
  Discussion(
    name: 'Oceans and Continents',
    description: 'Discover the major oceans and continents of the world.',
    imageURL: AppAssets.kOnboarding1,
  ),
  Discussion(
    name: 'Desert Survival Tips',
    description: 'Share tips for surviving in harsh desert environments.',
    imageURL: AppAssets.kOnboarding1,
  ),
  Discussion(
    name: 'Cultural Diversity in Geography',
    description: 'Discuss how geography influences culture and diversity.',
    imageURL: AppAssets.kOnboarding1,
  ),
  Discussion(
    name: 'Geological Formations',
    description: 'Learn about fascinating geological formations worldwide.',
    imageURL: AppAssets.kOnboarding1,
  ),
  Discussion(
    name: 'Climate Change and Geography',
    description:
        'Explore the impact of climate change on geographical features.',
    imageURL: AppAssets.kOnboarding1,
  ),
  Discussion(
    name: 'Exploring Coral Reefs',
    description:
        'Discover the biodiversity of coral reefs and their importance.',
    imageURL: AppAssets.kOnboarding1,
  ),
  Discussion(
    name: 'Rivers of the World',
    description: 'Learn about famous rivers and their significance.',
    imageURL: AppAssets.kOnboarding1,
  ),
];

List<DiscussionMessage> discussionMessages = [
  DiscussionMessage(
    message: "That's fascinating!",
    userName: 'Alice',
    date: DateTime.now().subtract(Duration(minutes: 45)),
  ),
  DiscussionMessage(
    message: "I didn't know that.",
    userName: 'Bob',
    date: DateTime.now().subtract(Duration(minutes: 30)),
  ),
  DiscussionMessage(
    message: 'Great point!',
    userName: 'Charlie',
    date: DateTime.now().subtract(Duration(minutes: 15)),
  ),
  DiscussionMessage(
    message: 'Wow!',
    userName: 'David',
    date: DateTime.now().subtract(Duration(minutes: 10)),
  ),
  DiscussionMessage(
    message: 'Interesting topic.',
    userName: 'Emma',
    date: DateTime.now().subtract(Duration(minutes: 5)),
  ),
];
