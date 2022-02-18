import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:planet_community/data/model/planet_model.dart';
import 'package:planet_community/screens/planet_screen/screen.dart';
import 'package:planet_community/style/app_colors.dart';
import 'package:planet_community/style/app_text_styles.dart';

class CarouselScreen extends StatelessWidget {
  const CarouselScreen({
    Key? key,
    required this.planetModelList,
  }) : super(key: key);

  final List<PlanetModel> planetModelList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 90,
        ),
        const Text(
          'SOLAR SYSTEM',
          style: AppTextStyle.textStyle69w700,
        ),
        //const Spacer(),
        const Divider(
          endIndent: 10,
          indent: 10,
          height: 40,
          thickness: 0.8,
          color: AppColors.grey,
        ),
       // const Spacer(),
        Text(
          'JOIN THE JOURNEY',
          style: AppTextStyle.textStyle24w700.copyWith(color: Colors.white),
        ),
        CarouselSlider.builder(
          options: CarouselOptions(
            viewportFraction: 0.5,
            autoPlay: true,
            aspectRatio: 1.0,
            enlargeCenterPage: true,
          ),
          itemCount: planetModelList.length,
          itemBuilder: (ctx, int index, _) {
            int oldIndex = index;
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PlanetScreen(
                      planet: planetModelList[index],
                    ),
                  ),
                );
                Navigator.of(context);
              },
              child: Container(
                margin: const EdgeInsets.all(5.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Opacity(
                      opacity: oldIndex == index ? 1 : 0.5,
                      child: CachedNetworkImage(
                        imageUrl: planetModelList[index].image,
                        placeholder: (context, url) => const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width * 0.7,
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      child: Text(
                        planetModelList[index].name,
                        style: AppTextStyle.textStyle24w700
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        const Spacer(),
        // const SizedBox(
        //   height: 100,
        // ),
      ],
    );
  }
}
