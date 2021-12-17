import 'package:first_app/api/cities.dart';
import 'package:flutter/material.dart';
import "./city.dart" as cityWidget;

class CitiesPage extends StatefulWidget {
  const CitiesPage({Key? key}) : super(key: key);

  @override
  State<CitiesPage> createState() => _CitiesPageState();
}

class _CitiesPageState extends State<CitiesPage> {
  var cities = getCities();
  late Future<List<City>> citiesFuture;

  @override
  void initState() {
    super.initState();
    citiesFuture = getCities();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cities"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            FutureBuilder<List<City>>(
              future: citiesFuture,
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                  case ConnectionState.active:
                  case ConnectionState.waiting:
                    return const CircularProgressIndicator();
                  case ConnectionState.done:
                    if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else {
                      var data = snapshot.data!;
                      return Expanded(
                        child: ListView(
                            children: data
                                .map(
                                  (e) => cityWidget.City(
                                      id: e.id,
                                      name: e.name,
                                      country: e.country),
                                )
                                .toList()),
                      );
                    }
                  default:
                    return const Text("something odd happened 🤨");
                }
              },
            ),
            // https://source.unsplash.com/featured/?
          ],
        ),
      ),
    );
  }
}
