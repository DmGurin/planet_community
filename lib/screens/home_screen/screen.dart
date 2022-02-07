import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planet_community/screens/earth_screen/earth_profile/screen.dart';
import 'package:planet_community/screens/earth_screen/screen.dart';
import 'package:planet_community/screens/earthquake_screen/earthquake_screen.dart';
import 'package:planet_community/screens/home_screen/test_screen.dart';
import 'package:planet_community/screens/jupiter_screen/jupiter_profile/screen.dart';
import 'package:planet_community/screens/jupiter_screen/screen.dart';
import 'package:planet_community/screens/mars_screen/mars_profile/screen.dart';
import 'package:planet_community/screens/mars_screen/screen.dart';
import 'package:planet_community/screens/mercury_screen/mercury_profile/screen.dart';
import 'package:planet_community/screens/mercury_screen/screen.dart';
import 'package:planet_community/screens/sun_screen/screen.dart';
import 'package:planet_community/screens/sun_screen/sun_profile/screen.dart';
import 'package:planet_community/screens/temperature_screen/temperature_screen.dart';
import 'package:planet_community/screens/uranus_screen/screen.dart';
import 'package:planet_community/screens/uranus_screen/uranus_profile/screen.dart';
import 'package:planet_community/screens/venus_screen/screen.dart';
import 'package:planet_community/screens/venus_screen/venus_profile/screen.dart';

import 'carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _onItemTapped(int index) {
    setState(() {
      controller.jumpToPage(index);
      currentIndex = index;
    });
  }

  PageController controller = PageController(initialPage: 0);
  int currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: controller,
          children: const [
            MercuryScreen(),
            MercuryProfileScreen(),
            SunProfileScreen(),
            SunScreen(),
            TestScreen(),
            EarthQuakeScreen(),
            TemperatureScreen(),
            CarouselScreen(),
            MarsScreen(),
            MarsProfileScreen(),
            EarthScreen(),
            EarthProfileScreen(),
            VenusScreen(),
            VenusProfileScreen(),
            JupiterScreen(),
            JupiterProfileScreen(),
            UranusScreen(),
            UranusProfileScreen(),
          ],
        ),
      ),
    );
  }
}
