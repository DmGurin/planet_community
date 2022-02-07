
import 'package:planet_community/screens/earth_screen/screen.dart';
import 'package:planet_community/screens/home_screen/carousel_entity.dart';
import 'package:planet_community/screens/jupiter_screen/screen.dart';
import 'package:planet_community/screens/mars_screen/screen.dart';
import 'package:planet_community/screens/uranus_screen/screen.dart';
import 'package:planet_community/screens/venus_screen/screen.dart';
import 'package:planet_community/source/images.dart';

List<CarouselEntity> carouselList = [
  CarouselEntity(
    name: 'MARS',
    image: AppImages.mars,
    route: const MarsScreen(),
),
  CarouselEntity(
    name: 'EARTH',
    image: AppImages.earth,
    route: const EarthScreen(),
  ),
  CarouselEntity(
    name: 'JUPITER',
    image: AppImages.jupiter,
    route: const JupiterScreen(),
  ),
  CarouselEntity(
    name: 'URANUS',
    image: AppImages.uranus,
    route: const UranusScreen(),
  ),
  CarouselEntity(
    name: 'VENUS',
    image: AppImages.venus,
    route: const VenusScreen(),
  ),
];

final List<String> imgList = [
  'assets/images/mars.png',
  'assets/images/earth.png',
  'assets/images/jupiter.png',
  'assets/images/uranus.png',
  'assets/images/venus.png',
];