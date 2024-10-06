import 'package:flutter/material.dart';
import 'package:places/screens/new-places.dart';

class Places extends StatefulWidget {
  const Places({super.key});

  @override
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  List<Places> allPlaces = [];

  _addPlaces(Places places) {
    setState(() {
      allPlaces.add(places);
    });
  }

  void _newPlacesPage() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => NewItem(
              addPlaces: _addPlaces,
            )));
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
      body: Container(),
    );
  }
}
