import 'package:flutter/material.dart';

class MenuAppController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedMenuIndex = 0;

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;
  int get selectedMenuIndex => _selectedMenuIndex;

  List<Map<String, dynamic>> searchList = [];

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  void updateMenuIndex(int index) {
    _selectedMenuIndex = index;
    notifyListeners();
  }

  void search(String query) {
    searchList.clear(); // Clear previous search results
    if (query.isEmpty) {
      notifyListeners();
      return;
    }
    for (var item in myList) {
      if (item["name"].toString().toLowerCase().contains(query.toLowerCase())) {
        searchList.add(item);
        notifyListeners();
      }
      notifyListeners();
    }
    notifyListeners();
  }
}

List<Map<String, dynamic>> myList = [
  {"name": "Salimov Davlatbek"},
  {"name": "Kamolov Sardor"},
  {"name": "Johonov Davlatbek"},
  {"name": "Nurmuhammadov Alisher"},
  {"name": "Asilbekov Sardor"},
];
