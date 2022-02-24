import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planet_community/data/model/planet_model.dart';
import 'package:planet_community/screens/planet_profile/screen.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class PlanetScreen extends StatelessWidget {
  const PlanetScreen({
    Key? key,
    required this.planet,
  }) : super(key: key);

  final PlanetModel planet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(40, 50, 40, 40),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const Text(
              'PLANET',
              style: AppTextStyle.textStyle16w700,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              planet.name,
              style: AppTextStyle.textStyle64w700,
              textAlign: TextAlign.center,
            ),
            Text(
              planet.typePlanet,
              style: AppTextStyle.textStyle14w700,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: CachedNetworkImage(
                imageUrl: planet.image,
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'REDUS',
                      style: AppTextStyle.textStyle24w700,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${planet.redus} KM',
                      style: AppTextStyle.textStyle18w700,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'MOONS',
                      style: AppTextStyle.textStyle24w700,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      planet.moons,
                      style: AppTextStyle.textStyle18w700,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'DISTANCE FROM SUN',
                      style: AppTextStyle.textStyle24w700,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${planet.distance} KM',
                      style: AppTextStyle.textStyle18w700,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'ORBITAL PERIOD',
                      style: AppTextStyle.textStyle24w700,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      planet.period,
                      style: AppTextStyle.textStyle18w700,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProfilePlanetScreen(
                      planet: planet,
                    ),
                  ),
                );
              },
              child: Container(
                child: Center(
                  child: Text(
                    'START TOUR',
                    style: AppTextStyle.textStyle18w700.copyWith(
                      letterSpacing: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.blue,
                      AppColors.darkBlue,
                    ],
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
