import 'package:planet_community/data/client.dart';
import 'package:planet_community/data/endpoints.dart';

class ApiServices {
  final client = Client();

  Future<String> getPlanet() async {
    final response = await client.getMethodDio(Endpoints.planet);
    return response;
  }
}
