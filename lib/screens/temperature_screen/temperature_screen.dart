import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:planet_community/data/model/planet_model.dart';
import 'package:planet_community/source/images.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class TemperatureScreen extends StatelessWidget {
  const TemperatureScreen({
    Key? key,
    required this.planet,
  }) : super(key: key);

  final PlanetModel planet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 70, 20, 30),
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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.width * 0.3,
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.blueSemi,
                          AppColors.darkBlue,
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 0.5,
                          offset: const Offset(
                              0, 1), // changes position of shadow
                        ),
                      ],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Image.asset(
                      AppImages.temperature,
                      color: AppColors.lightBlue,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Text('TEMPERATURE THIS WEEK',
                        style: AppTextStyle.textStyle26w700),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                color: AppColors.grey.withOpacity(0.5),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'The temperature on Mars is much colder than on Earth.  But then, the planet is also farther from the sun. The small, barren planet also has a thin atmosphere that is 95 percent carbon dioxide.',
                style: AppTextStyle.textStyle16w700,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'This combination of factors makes Mars a harsh and cold world whose temperature can drop to as low as minus 200 degrees Fahrenheit (minus 128 degrees Celsius). As a point of comparison, the lowest recorded temperature on Earth is minus 128.6 degrees F (minus 88 degrees C) in Antarctica according to Arizona State University.',
                style: AppTextStyle.textStyle16w700,
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                color: AppColors.grey.withOpacity(0.5),
              ),
              const SizedBox(
                height: 20,
              ),
              CachedNetworkImage(
                imageUrl: planet.image,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
