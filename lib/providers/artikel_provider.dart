import 'package:flutter/material.dart';
import 'package:artikel/models/artikel_model.dart';
import 'package:artikel/services/artikel_services.dart';

class NewsProvider extends ChangeNotifier {
  late ArtikelModel artikelModel = ArtikelModel();
  final ArtikelService _artikelService = ArtikelService();

  tampilkanNews() async {
    artikelModel = await _artikelService.getNews();

    notifyListeners();
  }

  ArtikelProvider() {
    tampilkanNews();
  }
}