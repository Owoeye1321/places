import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/places.dart';

class NewPlacesStateNotifier extends StateNotifier<List<Location>> {
  NewPlacesStateNotifier() : super([]);

  getPlaces() {}
  addPlaces(){}
}

var newPlacesProvider = StateNotifierProvider();
