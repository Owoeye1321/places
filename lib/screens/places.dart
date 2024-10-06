import 'package:flutter/material.dart';
import 'package:places/screens/new-places.dart';
import 'package:places/widgets/location-item.dart';

import '../model/places.dart';

class Places extends StatefulWidget {
  const Places({super.key});

  @override
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  List<Location> allPlaces = [];

  _addPlaces(Location location) {
    setState(() {
      allPlaces.add(location);
    });
    print(allPlaces);
  }

  void _newPlacesPage() async {
    var response = await Navigator.of(context).push<Location>(
      MaterialPageRoute(
        builder: (ctx) => NewItem(
          addPlaces: _addPlaces,
        ),
      ),
    );
    _addPlaces(response!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Places"),
        actions: [
          IconButton(
            onPressed: _newPlacesPage,
            icon: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: ListView.builder(
          itemCount: allPlaces.length,
          itemBuilder: (context, index) => LocationItem(
            location: allPlaces[index],
          ),
        ),
      ),
    );
  }
}
