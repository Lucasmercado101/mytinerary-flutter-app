import 'package:first_app/api/common.dart';
import 'package:http/http.dart';
import 'dart:convert';

const citiesEndpoint = baseUrl + "/cities";

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
