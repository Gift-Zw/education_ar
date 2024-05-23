import 'package:eden_learning_app/app/data/constants/app_assets.dart';
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
    name: 'Earth Models',
    src: AppAssets.modelEarth,
    imgUrl: AppAssets.categoryPlanets,
    details:
        "This model visualizes the Earth's magnetic field, which plays a crucial role in navigation and protects our planet from harmful solar winds. Understanding the Earth's magnetic field is essential for various applications, including compass navigation, satellite communication, and studying space weather.",
    category: ModelCategory(
      id: '5',
      name: 'Planets',
      image: AppAssets.categoryPlanets,
    ),
  ),
  GeoModel(
    name: 'Antelope Canyon',
    src: AppAssets.modelAntelopeCanyon,
    imgUrl: AppAssets.categoryCanyons,
    details:
        "Explore the boundaries of tectonic plates and understand how their movements shape the Earth's surface, causing earthquakes, volcanic eruptions, and mountain formation. The study of tectonic plate boundaries is crucial for understanding geological hazards and the distribution of natural resources.",
    category: ModelCategory(
      id: '4',
      name: 'Rocks',
      image: AppAssets.categoryrocks,
    ),
  ),
  GeoModel(
    name: 'Hiti Volcanoe',
    src: AppAssets.modelVolcano,
    imgUrl: AppAssets.categoryVolcanoes,
    details:
        "Witness the continuous movement of water on Earth as it evaporates from oceans, condenses into clouds, precipitates as rain or snow, and flows back into oceans, rivers, and lakes. The water cycle is essential for maintaining life on Earth and regulating the planet's climate.",
    category: ModelCategory(
      id: '3',
      name: 'Volcanoes',
      image: AppAssets.categoryVolcanoes,
    ),
  ),
  GeoModel(
    name: 'Waterfall Model',
    src: AppAssets.modelWaterFall,
    imgUrl: AppAssets.categoryRivers,
    details:
        'Observe the effects of climate change on glaciers as they retreat, leading to rising sea levels, altered ecosystems, and impacts on human populations. Glacial retreat is a significant indicator of global warming and its consequences for the environment.',
    category: ModelCategory(
      id: '2',
      name: 'Rivers',
      image: AppAssets.categoryRivers,
    ),
  ),
  GeoModel(
      name: 'Mount Fuji',
      src: AppAssets.modelMountFuji,
      imgUrl: AppAssets.categoryMountain,
      details:
          "Witness the processes of erosion and deposition that sculpt the Earth's surface over time, shaping landscapes such as valleys, canyons, and deltas. Erosion and deposition are fundamental geological processes that influence landforms and ecosystems.",
      category: ModelCategory(
          id: '1', name: 'Mountains', image: AppAssets.categoryMountain)),
  GeoModel(
    src: AppAssets.modelHeroMountain,
    name: 'Hero Mountain',
    imgUrl: AppAssets.categoryMountain,
    details:
        'Hero Mountain stands tall with its majestic peak, offering breathtaking views from its summit. Located in a remote region, its height reaches approximately 3,000 meters above sea level. With its rugged terrain and diverse ecosystems, Hero Mountain is a favorite destination for adventurers seeking both challenge and beauty. Its width spans several kilometers, and its slopes are adorned with lush vegetation, providing habitats for various flora and fauna. Educational explorations here reveal the intricacies of mountain ecology, geological formations, and the resilience of life in extreme environments',
    category: ModelCategory(
        id: '1', name: 'Mountains', image: AppAssets.categoryMountain),
  ),
  GeoModel(
      src: AppAssets.modelSadleMountain,
      name: 'Sadle Mountaion',
      imgUrl: AppAssets.categoryMountain,
      details:
          'Sadle Mountain, named for its distinctive saddle-shaped ridge, is a prominent feature in the landscape. Standing at an elevation of around 2,500 meters, it offers panoramic views of surrounding valleys and peaks. Located in a region known for its geological diversity, Sadle Mountain provides valuable insights into tectonic processes and landform evolution. Its width extends across several kilometers, and its slopes are home to unique plant species adapted to its harsh conditions. Educational expeditions here offer opportunities to study geological phenomena, watershed dynamics, and environmental adaptation.',
      category: ModelCategory(
          id: '1', name: 'Mountains', image: AppAssets.categoryMountain)),
  GeoModel(
      src: AppAssets.modelWaterFall,
      name: 'Waterfall Mountain',
      imgUrl: AppAssets.categoryMountain,
      details:
          "Waterfall Mountain cascades gracefully down its rugged slopes, carving intricate patterns in the landscape. With its height reaching over 1,500 meters, it boasts some of the most spectacular waterfalls in the region. Nestled within a pristine wilderness area, Waterfall Mountain offers a haven for biodiversity, with its width spanning vast expanses of forest and rocky outcrops. Educational visits here immerse students in the study of hydrology, geomorphology, and ecological interactions. Exploring its diverse ecosystems and watercourses provides valuable insights into the interconnectedness of Earth's systems",
      category: ModelCategory(
          id: '1', name: 'Mountains', image: AppAssets.categoryMountain)),
  GeoModel(
      src: AppAssets.modelCliffRock,
      name: 'Cliff Rock',
      imgUrl: AppAssets.categoryrocks,
      details:
          'Cliff Rock towers dramatically above its surroundings, with sheer cliffs that command attention. Located in a rugged terrain, its height varies from a few meters to over 100 meters in places. Its width spans several kilometers, offering expansive vistas of the surrounding landscape. Cliff Rock is a geological wonder, showcasing the erosive power of wind and water over millennia. Educational excursions here delve into the processes of weathering, erosion, and sedimentation, illuminating the geological history preserved in its stratified layers',
      category: ModelCategory(
        id: '4',
        name: 'Rocks',
        image: AppAssets.categoryrocks,
      )),
  GeoModel(
      src: AppAssets.modelGraniteRock,
      name: 'Granite Rock',
      imgUrl: AppAssets.categoryrocks,
      details:
          "Granite Rock stands as a testament to the enduring forces of nature, with its solid mass and weather-resistant properties. Formed deep within the Earth's crust, it now emerges as prominent outcrops in the landscape. Its height varies, reaching up to 200 meters in places, while its width extends across vast expanses of terrain. Granite Rock provides valuable insights into the geological processes of igneous rock formation and mountain building. Educational visits here offer opportunities to study mineral composition, rock textures, and the role of geological forces in shaping the land.",
      category: ModelCategory(
        id: '4',
        name: 'Rocks',
        image: AppAssets.categoryrocks,
      )),
  GeoModel(
      src: AppAssets.modelGraniteBrown,
      name: 'Granite Brown',
      imgUrl: AppAssets.categoryrocks,
      details:
          "Granite Brown, distinguished by its warm hues and rugged contours, stands as a testament to the ancient geological forces that shaped it.  This imposing rock formation dominates the landscape, offering a striking contrast to the surrounding terrain. Its width spans several kilometers, and its weathered surfaces reveal a history stretching back millions of years. Granite Brown provides a fascinating glimpse into the processes of erosion, weathering, and sedimentation that have sculpted it over time. Educational expeditions here offer opportunities to study geological phenomena such as faulting, folding, and metamorphism, shedding light on the dynamic nature of Earth's crust",
      category: ModelCategory(
        id: '4',
        name: 'Rocks',
        image: AppAssets.categoryrocks,
      )),
  GeoModel(
      src: AppAssets.modelVolcanicRocks,
      name: 'Volcanic Rocks',
      imgUrl: AppAssets.categoryrocks,
      details:
          'Volcanic Rocks bear witness to the fiery origins of the Earth, with their rugged forms and volcanic textures. Scattered across the landscape, these rocks offer clues to past volcanic activity and the processes that shaped the land. Their heights vary, ranging from small volcanic cones to towering peaks, while their widths extend across extensive areas. Volcanic Rocks provide valuable insights into the geology of volcanic regions, including magma composition, lava flows, and volcanic hazards. Educational visits here immerse students in the study of plate tectonics, volcanic eruptions, and the formation of igneous landforms, fostering an appreciation for the dynamic forces that shape our planet.',
      category: ModelCategory(
        id: '4',
        name: 'Rocks',
        image: AppAssets.categoryrocks,
      )),
  GeoModel(
      src: AppAssets.modelIgenousRocks,
      name: 'Igenous Rock',
      imgUrl: AppAssets.categoryrocks,
      details:
          "Igneous Rock, born from the molten depths of the Earth, emerges as a testament to the planet's fiery origins. With its diverse textures and mineral compositions, it offers a window into the processes of magma crystallization and solidification. Its heights vary from small volcanic plugs to massive intrusions, while its widths span vast expanses of terrain. Igneous Rock provides valuable insights into the geology of volcanic and plutonic environments, including the formation of volcanic islands, batholiths, and volcanic arcs. Educational explorations here delve into the classification of igneous rocks, their economic significance, and their role in shaping landscapes and ecosystems.",
      category: ModelCategory(
        id: '4',
        name: 'Rocks',
        image: AppAssets.categoryrocks,
      )),
  GeoModel(
      src: AppAssets.modelLavaFlow,
      name: 'Lava Flow',
      imgUrl: AppAssets.categoryVolcanoes,
      details:
          'Lava Flow, a dynamic expression of volcanic activity, traces its fiery path across the landscape, leaving behind a legacy of rugged terrain and hardened lava fields. Born from the depths of the Earth, molten lava erupts from volcanic vents and fissures, shaping the land in its wake. The height of Lava Flow varies depending on the intensity of the eruption, with some flows reaching several meters in thickness. Its width can extend for kilometers, engulfing everything in its path. Lava Flow provides a tangible reminder of the power of volcanism and its impact on the environment. Educational visits here offer opportunities to study volcanic processes, volcanic landforms, and the ecological succession that occurs in lava-affected areas.',
      category: ModelCategory(
        id: '3',
        name: 'Volcanoes',
        image: AppAssets.categoryVolcanoes,
      )),
  GeoModel(
      src: AppAssets.modelVolcanoeLava,
      name: 'Volcano Lava',
      imgUrl: AppAssets.categoryVolcanoes,
      details:
          "Volcano Lava, synonymous with the raw power of volcanic eruptions, flows forth from the Earth's depths, shaping landscapes and ecosystems in its fiery embrace. With its fluid nature and intense heat, lava can travel great distances, covering vast expanses of terrain with molten rock. The height of Volcano Lava can vary widely, depending on factors such as eruption intensity and viscosity of the magma. Its width extends across the landscape, transforming everything in its path. Volcano Lava provides valuable insights into the processes of magma generation, eruption dynamics, and volcanic hazards. Educational excursions here offer firsthand experiences with volcanic phenomena, fostering an understanding of the dynamic nature of Earth's geology.",
      category: ModelCategory(
        id: '3',
        name: 'Volcanoes',
        image: AppAssets.categoryVolcanoes,
      )),
  GeoModel(
      src: AppAssets.modelKrakatauVolcano,
      name: 'Kratatu Volcano',
      imgUrl: AppAssets.categoryVolcanoes,
      details:
          "Kratatu Volcano, named for its legendary eruptions and formidable presence, looms large on the horizon, a testament to the restless forces beneath the Earth's surface. Rising to heights of over 1,000 meters, its towering peak dominates the surrounding landscape, casting a shadow over the land below. Located in a region known for its volcanic activity, Kratatu Volcano has shaped the land through millennia of eruptions and lava flows. Its width spans several kilometers, encompassing rugged terrain and fertile valleys. Educational visits here provide opportunities to study volcanic hazards, monitoring techniques, and the societal impacts of volcanic eruptions, contributing to our understanding of natural hazards and disaster preparedness.",
      category: ModelCategory(
        id: '3',
        name: 'Volcanoes',
        image: AppAssets.categoryVolcanoes,
      )),
  GeoModel(
      src: AppAssets.modelKilaueaVolcano,
      name: 'Kilauea volcano',
      imgUrl: AppAssets.categoryVolcanoes,
      details:
          "Kilauea Volcano, a symbol of the dynamic nature of Hawaii's volcanic landscapes, stands as one of the world's most active volcanoes, with a history of continuous eruptions spanning millennia. Its height varies as lava builds new layers on its slopes, while its width encompasses vast expanses of the island of Hawaii. Kilauea's eruptions have shaped the island's geography and provided fertile soil for lush vegetation to thrive. Educational expeditions here offer insights into volcanic monitoring, lava flow dynamics, and the cultural significance of volcanoes in Hawaiian mythology. Studying Kilauea Volcano provides valuable lessons in resilience, adaptation, and the interconnectedness of geology and society.",
      category: ModelCategory(
        id: '3',
        name: 'Volcanoes',
        image: AppAssets.categoryVolcanoes,
      )),
  GeoModel(
      src: AppAssets.modelCruaghStream,
      name: 'Cruagh Stream',
      imgUrl: AppAssets.categoryRivers,
      details:
          "Cruagh Stream, a lifeline coursing through the landscape, carries the life-giving waters from mountain springs to fertile valleys below. Born from melting snow and rainwater, its journey begins high in the mountains, where its width is narrow and its flow swift. As it descends, Cruagh Stream widens, carving its path through rocky gorges and verdant forests. Its height varies with the terrain, forming cascading waterfalls and tranquil pools along its course. Cruagh Stream sustains diverse ecosystems and provides vital resources for human communities downstream. Educational explorations here offer opportunities to study hydrological processes, watershed management, and the ecological importance of freshwater habitats.",
      category: ModelCategory(
        id: '2',
        name: 'Rivers',
        image: AppAssets.categoryRivers,
      )),
  GeoModel(
      src: AppAssets.model243Waterfall,
      name: 'Agora Waterfalls',
      imgUrl: AppAssets.categoryRivers,
      details:
          "Cruagh Stream, a lifeline coursing through the landscape, carries the life-giving waters from mountain springs to fertile valleys below. Born from melting snow and rainwater, its journey begins high in the mountains, where its width is narrow and its flow swift. As it descends, Cruagh Stream widens, carving its path through rocky gorges and verdant forests. Its height varies with the terrain, forming cascading waterfalls and tranquil pools along its course. Cruagh Stream sustains diverse ecosystems and provides vital resources for human communities downstream. Educational explorations here offer opportunities to study hydrological processes, watershed management, and the ecological importance of freshwater habitats.",
      category: ModelCategory(
        id: '2',
        name: 'Rivers',
        image: AppAssets.categoryRivers,
      )),
  GeoModel(
      src: AppAssets.modelStream,
      name: 'Carrick Stream',
      imgUrl: AppAssets.categoryRivers,
      details:
          "Carrick Stream, a tranquil ribbon of water winding through the landscape, offers a haven for wildlife and a source of inspiration for visitors. Born from mountain springs and rainfall, its journey begins high in the hills, where its width is narrow and its flow swift. As it meanders through valleys and meadows, Carrick Stream widens, forming pools and riffles that teem with aquatic life. Its height varies with the terrain, creating waterfalls and rapids along its course. Carrick Stream provides valuable ecosystem services, including water supply, habitat provision, and recreational opportunities. Educational explorations here offer insights into stream ecology, aquatic biodiversity, and the importance of freshwater conservation.",
      category: ModelCategory(
        id: '2',
        name: 'Rivers',
        image: AppAssets.categoryRivers,
      )),
  GeoModel(
      src: AppAssets.modelWaikikiWaterfall,
      name: 'Waikiki Waterfall',
      imgUrl: AppAssets.categoryRivers,
      details:
          "Waikiki Waterfall, a hidden gem nestled in the heart of the rainforest, enchants visitors with its beauty and tranquility. Born from mountain springs and rainfall, its waters cascade gracefully from heights of over 50 meters, forming a picturesque pool at its base. Surrounded by lush vegetation and towering trees, Waikiki Waterfall provides a sanctuary for birds, insects, and other wildlife. Its width spans the width of the river, creating a serene oasis amidst the dense foliage. Waikiki Waterfall offers valuable lessons in ecosystem dynamics, biodiversity conservation, and sustainable tourism. Educational visits here provide opportunities to study tropical rainforest ecology, hydrological processes, and the cultural significance of waterfalls in indigenous cultures.",
      category: ModelCategory(
        id: '2',
        name: 'Rivers',
        image: AppAssets.categoryRivers,
      )),
];

List<ModelCategory> dummyMghodelCategories = [
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
    name: 'Planets',
    image: AppAssets.categoryPlanets,
  ),
];
