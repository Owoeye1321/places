import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:places/screens/new-places.dart';
import 'package:places/widgets/location-item.dart';
import 'package:places/provider/new-places.dart';
import '../model/place.dart';

class Places extends ConsumerStatefulWidget {
  const Places({super.key});

  @override
  ConsumerState<Places> createState() => _PlacesState();
}

class _PlacesState extends ConsumerState<Places> {
  List<Location> allPlaces = [];


  void _newPlacesPage() async {
     Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => NewItem(
        ),
      ),
    );
    //_addPlaces(response!);
  }

  @override
  Widget build(BuildContext context) {
    allPlaces  = ref.watch(placesProvider);
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
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
