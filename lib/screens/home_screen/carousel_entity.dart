import 'package:flutter/material.dart';

class PlanetEntity {
  final String name;
  final String image;
  final Widget route;
  final String minTemp;
  final String maxTemp;
  final String minQuake;
  final String maxQuake;

  PlanetEntity({
    required this.name,
    required this.image,
    required this.route,
    required this.minTemp,
    required this.maxTemp,
    required this.minQuake,
    required this.maxQuake,
  });
}
