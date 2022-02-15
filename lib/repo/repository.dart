import 'package:planet_community/data/api_services.dart';
import 'package:planet_community/data/model/planet_model.dart';

class Repository {
  final apiServices = ApiServices();

  Future<List<PlanetModel>> getPlanet() async {
    var response = await apiServices.getPlanet();
    return response;
  }
}
