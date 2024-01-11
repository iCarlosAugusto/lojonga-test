import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:lojangtest/models/video.model.dart';
import 'package:lojangtest/utils/http.request.dart';

class VideosViewModel with ChangeNotifier {
  final dio = HttpRequest.dio;

  final List<VideoModel> _videos = [];
  List<VideoModel> get videos => _videos;

  VideosViewModel() {
    _getVideos();
  }
  Future<void> _getVideos() async {
    Response result = await dio.get("/videos");
    _videos.addAll( List.from(result.data.map((model) => VideoModel.fromJSON(model))));
    notifyListeners();
  }
}