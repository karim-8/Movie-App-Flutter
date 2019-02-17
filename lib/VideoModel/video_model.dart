import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:movie_app_design/VideoModel/video.dart';


class VideoModel {
  final int id;
  final List<Video> results;

  VideoModel({
    this.id,
    this.results
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) {
    return VideoModel(
        id: json['id'],
        results: (json['results'] as List).map((i) =>
            Video.fromJson(i)).toList());
  }
}
