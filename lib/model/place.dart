import 'dart:io';

import 'package:uuid/uuid.dart';
const uuid = Uuid();
class Location {
  String place;
  String id;
  File? image;
  Location({required this.place, required this.image}):  id = uuid.v4();
}
