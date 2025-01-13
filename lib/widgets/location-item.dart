import 'package:flutter/material.dart';
import 'package:places/model/place.dart';
import 'package:places/screens/about-location.dart';

class LocationItem extends StatelessWidget {
  final Places location;
  const LocationItem({super.key, required this.location});

  void _aboutLocation(context, Places location) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AboutLocation(location: location),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 26,
        backgroundImage: FileImage(location.image!),
      ),
      title: Text(
        location.place,
        style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
      ),
      onTap: () {
        _aboutLocation(context, location);
      },
    );
  }
}
