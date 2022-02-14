import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planet_community/screens/earth_screen/earth_profile/screen.dart';
import 'package:planet_community/screens/earth_screen/screen.dart';
import 'package:planet_community/screens/earthquake_screen/earthquake_screen.dart';
import 'package:planet_community/screens/jupiter_screen/jupiter_profile/screen.dart';
import 'package:planet_community/screens/jupiter_screen/screen.dart';
import 'package:planet_community/screens/mars_screen/mars_profile/screen.dart';
import 'package:planet_community/screens/mars_screen/screen.dart';
import 'package:planet_community/screens/temperature_screen/temperature_screen.dart';
import 'package:planet_community/screens/uranus_screen/screen.dart';
import 'package:planet_community/screens/uranus_screen/uranus_profile/screen.dart';
import 'package:planet_community/screens/venus_screen/screen.dart';
import 'package:planet_community/screens/venus_screen/venus_profile/screen.dart';

import 'carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CarouselScreen(),
    );
  }
}
