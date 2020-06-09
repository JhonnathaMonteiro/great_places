import 'package:flutter/material.dart';
import 'package:great_places/models/place.dart';

class GreatePlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get item {
    return [..._items];
  }
}
