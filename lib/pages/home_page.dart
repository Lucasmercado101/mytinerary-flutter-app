import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // Constructor
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mytinerary"),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cities');
        },
        child: Text('Cities'),
      ),
    );
  }
}
