import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:lojangtest/models/article.model.dart';
import 'package:lojangtest/models/video.model.dart';
import 'package:lojangtest/utils/http.request.dart';

class ArticlesViewModel with ChangeNotifier {
  final dio = HttpRequest.dio;

  final List<ArticleModel> _articles = [];
  List<ArticleModel> get articles => _articles;

  ArticlesViewModel() {
    _getArticles();
  }
  Future<void> _getArticles() async {
    Response result = await dio.get("/articles2");
    _articles.addAll( List.from(result.data["list"].map((model) => ArticleModel.fromJSON(model))));
    notifyListeners();
  }
}