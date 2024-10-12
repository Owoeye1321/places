import 'package:uuid/uuid.dart';
const uuid = Uuid();
class Location {
  String place;
  String id;
  Location({required this.place}):  id = uuid.v4();
}
