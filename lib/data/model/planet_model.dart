import 'dart:convert';

List<PlanetModel> planetModelFromJson(String str) => List<PlanetModel>.from(
    json.decode(str).map((x) => PlanetModel.fromJson(x)));

String planetModelToJson(List<PlanetModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PlanetModel {
  PlanetModel({
    required this.id,
    required this.name,
    required this.largeImage,
    required this.image,
    required this.minTemp,
    required this.maxTemp,
    required this.minQuake,
    required this.maxQuake,
    required this.typePlanet,
    required this.redus,
    required this.moons,
    required this.distance,
    required this.period,
  });

  final int id;
  final String name;
  final String largeImage;
  final String image;
  final String minTemp;
  final String maxTemp;
  final String minQuake;
  final String maxQuake;
  final String typePlanet;
  final String redus;
  final String moons;
  final String distance;
  final String period;

  factory PlanetModel.fromJson(Map<String, dynamic> json) => PlanetModel(
    id: json["id"],
    name: json["name"],
    largeImage: json["largeImage"],
    image: json["image"],
    minTemp: json["minTemp"],
    maxTemp: json["maxTemp"],
    minQuake: json["minQuake"],
    maxQuake: json["maxQuake"],
    typePlanet: json["typePlanet"],
    redus: json["redus"],
    moons: json["moons"],
    distance: json["distance"],
    period: json["period"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "largeImage": largeImage,
    "image": image,
    "minTemp": minTemp,
    "maxTemp": maxTemp,
    "minQuake": minQuake,
    "maxQuake": maxQuake,
    "typePlanet": typePlanet,
    "redus": redus,
    "moons": moons,
    "distance": distance,
    "period": period,
  };
}
