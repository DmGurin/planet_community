import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planet_community/data/api_services.dart';
import 'package:planet_community/data/model/planet_model.dart';
import 'package:planet_community/repo/repository.dart';
import 'package:planet_community/style/app_colors.dart';

import 'carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final repo = Repository();
  bool isLoading = false;
  List<PlanetModel> planetModelList = [];

  getPlanet() async {
    isLoading = true;
    planetModelList = await ApiServices().getPlanet();
    print(planetModelList);
    isLoading = false;
    setState(() {

    });
  }

  @override
  void initState() {

    getPlanet();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.darkBlue,
              AppColors.darkGrey,
            ],
          ),
        ),
        child: isLoading
            ? const Center(child: CircularProgressIndicator())
            : CarouselScreen(planetModelList: planetModelList),
      ),
    );
  }
}
