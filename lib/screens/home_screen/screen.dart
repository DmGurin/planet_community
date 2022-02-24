import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  Future<List<PlanetModel>>? future;

  @override
  void initState() {
    future = Repository().getPlanet();
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
              AppColors.blue,
              AppColors.darkGrey,
            ],
          ),
        ),
        child: FutureBuilder<List<PlanetModel>>(
          future: future!,
          builder: (context, AsyncSnapshot<List<PlanetModel>> snapShot) {
            if (snapShot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapShot.hasError) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    color: Colors.red,
                    size: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'Error: ${snapShot.error}',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              );
            }
            return CarouselScreen(planetModelList: snapShot.data!);
          },
        ),
      ),
    );
  }
}
