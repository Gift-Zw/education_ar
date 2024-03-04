import 'package:eden_learning_app/app/models/category.dart';

class GeoModel {
  final String name;
  final String src;
  final String imgUrl;
  final String details;
  final ModelCategory category;

  GeoModel(
      {required this.src,
      required this.name,
      required this.imgUrl,
      required this.details,
      required this.category});
}

List<GeoModel> geoModels = [
  GeoModel(
    name: 'Magnetic Field Model',
    src: 'assets/Astronault.glb',
    imgUrl: 'assets/astro.jpg',
    details:
        "This model visualizes the Earth's magnetic field, which plays a crucial role in navigation and protects our planet from harmful solar winds. Understanding the Earth's magnetic field is essential for various applications, including compass navigation, satellite communication, and studying space weather.",
    category: ModelCategory(
      id: '1',
      name: 'Earth Sciences',
      image: 'assets/astro.jpg',
    ),
  ),
  GeoModel(
    name: 'Tectonic Plate Boundaries',
    src: 'assets/Astronault.glb',
    imgUrl: 'assets/astro.jpg',
    details:
        "Explore the boundaries of tectonic plates and understand how their movements shape the Earth's surface, causing earthquakes, volcanic eruptions, and mountain formation. The study of tectonic plate boundaries is crucial for understanding geological hazards and the distribution of natural resources.",
    category: ModelCategory(
      id: '2',
      name: 'Geology',
      image: 'assets/astro.jpg',
    ),
  ),
  GeoModel(
    name: 'Water Cycle Simulation',
    src: 'assets/Astronault.glb',
    imgUrl: 'assets/astro.jpg',
    details:
        "Witness the continuous movement of water on Earth as it evaporates from oceans, condenses into clouds, precipitates as rain or snow, and flows back into oceans, rivers, and lakes. The water cycle is essential for maintaining life on Earth and regulating the planet's climate.",
    category: ModelCategory(
      id: '3',
      name: 'Hydrology',
      image: 'assets/astro.jpg',
    ),
  ),
  GeoModel(
    name: 'Glacial Retreat Model',
    src: 'assets/Astronault.glb',
    imgUrl: 'assets/astro.jpg',
    details:
        'Observe the effects of climate change on glaciers as they retreat, leading to rising sea levels, altered ecosystems, and impacts on human populations. Glacial retreat is a significant indicator of global warming and its consequences for the environment.',
    category: ModelCategory(
      id: '4',
      name: 'Climate Science',
      image: 'assets/astro.jpg',
    ),
  ),
  GeoModel(
    name: 'Erosion and Deposition Simulation',
    src: 'assets/Astronault.glb',
    imgUrl: 'assets/astro.jpg',
    details:
        "Witness the processes of erosion and deposition that sculpt the Earth's surface over time, shaping landscapes such as valleys, canyons, and deltas. Erosion and deposition are fundamental geological processes that influence landforms and ecosystems.",
    category: ModelCategory(
      id: '5',
      name: 'Geomorphology',
      image: 'assets/astro.jpg',
    ),
  ),
];
