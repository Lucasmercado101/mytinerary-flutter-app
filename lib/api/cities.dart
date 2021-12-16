import 'package:http/http.dart';
import 'dart:convert';

const baseUrl = "http://192.168.0.20:8001";
const citiesEndpoint = baseUrl + "/cities";

getCity(int id) {
  get(Uri.parse(citiesEndpoint + "/" + id.toString()));
}

Future<List<City>> getCities() async {
  var resp = await get(Uri.parse(citiesEndpoint));
  var resplist = List.castFrom(jsonDecode(resp.body));
  var newResp = resplist.map((city) => City.fromJson(city));

  return newResp.toList();
}

class City {
  final int id;
  final String name;
  final String country;

  City(this.id, this.name, this.country);

  City.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        country = json['country'];
}
