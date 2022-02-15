import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model/planet_model.dart';

class ApiServices {
  var url = Uri.parse('https://my-json-server.typicode.com/DmGurin/planet_community/planets/');

  Future<List<PlanetModel>> getPlanet() async {
    var response = await http.get(url);
    final str = utf8.decode(response.bodyBytes);
    return planetModelFromJson(str);
  }
}
