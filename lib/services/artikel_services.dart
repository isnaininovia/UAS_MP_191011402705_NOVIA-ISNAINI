import 'package:dio/dio.dart';
import 'package:artikel/models/artikel_model.dart';

class ArtikelService {
  Future<ArtikelModel> getNews() async {
    try {
      var response = await Dio().get('https://api.indosiana.com/api/articles');
      return ArtikelModel.fromJson({"data": response.data});
    } on DioError catch (e) {
      print(e);
      return ArtikelModel.fromJson({});
    }
  }
}