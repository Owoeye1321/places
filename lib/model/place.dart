import 'dart:io';

import 'package:uuid/uuid.dart';

const uuid = Uuid();

class PlaceLocation {
  PlaceLocation(
      {required this.latitude, required this.longitude, this.address});
  final double latitude;
  final double longitude;
  final String? address;
}

class Places {
  String place;
  String id;
  File? image;
  PlaceLocation location;
  Places({required this.place, required this.image, required this.location})
      : id = uuid.v4();
}
