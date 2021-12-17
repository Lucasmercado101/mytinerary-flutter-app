import 'package:flutter/material.dart';

class CityArguments {
  final int id;

  CityArguments(this.id);
}

class CityPage extends StatefulWidget {
  final int cityId;

  CityPage({Key? key, required this.cityId}) : super(key: key);

  @override
  _CityState createState() => _CityState();
}

class _CityState extends State<CityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('City'),
      ),
      body: const Text('City'),
    );
  }
}
