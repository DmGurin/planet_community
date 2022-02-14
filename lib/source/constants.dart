
import 'package:planet_community/screens/earth_screen/screen.dart';
import 'package:planet_community/screens/home_screen/carousel_entity.dart';
import 'package:planet_community/screens/jupiter_screen/screen.dart';
import 'package:planet_community/screens/mars_screen/screen.dart';
import 'package:planet_community/screens/uranus_screen/screen.dart';
import 'package:planet_community/screens/venus_screen/screen.dart';
import 'package:planet_community/source/images.dart';

List<PlanetEntity> planetList = [
  PlanetEntity(
    name: 'MARS',
    image: AppImages.mars,
    route: const MarsScreen(),
    minTemp: '2',
    maxTemp: '20',
    minQuake: '3',
    maxQuake: '4',
),
  PlanetEntity(
    name: 'EARTH',
    image: AppImages.earth,
    route: const EarthScreen(),
    minTemp: '0\u00b0',
    maxTemp: '40\u00b0',
    minQuake: '1\u00b0',
    maxQuake: '6\u00b0',
  ),
  PlanetEntity(
    name: 'JUPITER',
    image: AppImages.jupiter,
    route: const JupiterScreen(),
    minTemp: '50\u00b0',
    maxTemp: '100\u00b0',
    minQuake: '2\u00b0',
    maxQuake: '5\u00b0',
  ),
  PlanetEntity(
    name: 'URANUS',
    image: AppImages.uranus,
    route: const UranusScreen(),
    minTemp: '0\u00b0',
    maxTemp: '20\u00b0',
    minQuake: '1\u00b0',
    maxQuake: '3\u00b0',
  ),
  PlanetEntity(
    name: 'VENUS',
    image: AppImages.venus,
    route: const VenusScreen(),
    minTemp: '50\u00b0',
    maxTemp: '150\u00b0',
    minQuake: '8\u00b0',
    maxQuake: '9\u00b0',
  ),
];

final List<String> imgList = [
  'assets/images/mars.png',
  'assets/images/earth.png',
  'assets/images/jupiter.png',
  'assets/images/uranus.png',
  'assets/images/venus.png',
];