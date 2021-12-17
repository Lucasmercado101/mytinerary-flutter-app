import 'package:first_app/pages/city/city.dart';
import 'package:flutter/material.dart';

class City extends StatelessWidget {
  final int id;
  final String name;
  final String country;

  // constructor
  const City(
      {Key? key, required this.id, required this.name, required this.country})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => {
        Navigator.pushNamed(context, '/cities', arguments: CityArguments(id))
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    country,
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.chevron_right,
              size: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
