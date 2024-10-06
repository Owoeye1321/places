import 'package:flutter/material.dart';
import 'package:places/model/places.dart';
import 'package:places/screens/about-location.dart';

class LocationItem extends StatelessWidget {
  final Location location;
  const LocationItem({super.key, required this.location});

  void _aboutLocation(context, Location location) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AboutLocation(location: location),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        location.places,
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
      onTap: () {
        _aboutLocation(context, location);
      },
    );
  }
}
