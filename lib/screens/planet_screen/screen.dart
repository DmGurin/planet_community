import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planet_community/entity/planet_entity.dart';
import 'package:planet_community/screens/planet_profile/screen.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class PlanetScreen extends StatelessWidget {
  const PlanetScreen({
    Key? key,
    required this.planet,
  }) : super(key: key);

  final PlanetEntity planet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'PLANETA',
          style: AppTextStyle.textStyle16w700,
        ),
        backgroundColor: AppColors.darkBlue,
        elevation: 0.0,
      ),
      body: Container(
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
        child: Padding(
          padding: const EdgeInsets.only(
            left: 39.0,
            right: 39.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 35,
              ),
              Text(
                planet.name,
                style: AppTextStyle.textStyle69w700,
                textAlign: TextAlign.center,
              ),
              Text(
                planet.typePlanet,
                style: AppTextStyle.textStyle14w700,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Image.asset(planet.image),
              const Spacer(flex: 5),
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
                        height: 15,
                      ),
                      Text(
                        '${planet.redus} KM',
                        style: AppTextStyle.textStyle18w700,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'MOONS',
                        style: AppTextStyle.textStyle24w700,
                      ),
                      const SizedBox(
                        height: 15,
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
                        height: 15,
                      ),
                      Text(
                        '${planet.distance} KM',
                        style: AppTextStyle.textStyle18w700,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'ORBITAL PERIOD',
                        style: AppTextStyle.textStyle24w700,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        planet.period,
                        style: AppTextStyle.textStyle18w700,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
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
                  child: const Center(
                    child: Text(
                      'START TOUR',
                      style: AppTextStyle.textStyle18w700,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  width: 131,
                  height: 47,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.lightBlue,
                        AppColors.darkBlue,
                      ],
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
