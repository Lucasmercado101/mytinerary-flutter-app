import 'package:first_app/pages/cities/cities.dart';
import 'package:first_app/pages/home_page.dart';
import "package:flutter/material.dart";

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => HomePage());
      case "/cities":
        return MaterialPageRoute(builder: (_) => CitiesPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No route defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
