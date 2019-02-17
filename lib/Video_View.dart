import 'package:flutter/material.dart';
import 'package:movie_app_design/VideoModel//video_model.dart';
import 'package:movie_app_design/VideoModel/video.dart';
import 'package:movie_app_design/movie_model/Movie.dart';
import 'package:video_player/video_player.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_simple_video_player/flutter_simple_video_player.dart';

class VideoView extends StatefulWidget {

  Video video;
  //String key;

  VideoView(@required this.video);
  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<VideoView> {

  @override
  Widget build(BuildContext context) {

      return Container(
              child:
                    Card(child:
                    SimpleVideoPlayer("https://www.youtube.com/watch?v=" + widget.video.key))

      );
  }
}



