import 'package:http/http.dart';
import 'dart:convert';

const baseUrl = "https://localhost:8001";
const citiesEndpoint = baseUrl + "/cities";

getCity(int id) {
  get(Uri.parse(citiesEndpoint + "/" + id.toString()));
}

getCities() {
  return get(Uri.parse(citiesEndpoint));
}
