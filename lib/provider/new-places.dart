import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/place.dart';

class NewPlacesStateNotifier extends StateNotifier<List<Places>> {
  NewPlacesStateNotifier() : super([]);
  getPlaces() {
    return state;
  }

  bool addPlaces(Places location) {
    if (state.contains(location)) {
      return false;
    } else {
      state = [...state, location];
      return true;
    }
  }
}

var placesProvider =
    StateNotifierProvider<NewPlacesStateNotifier, List<Places>>(
  (ref) => NewPlacesStateNotifier(),
);
