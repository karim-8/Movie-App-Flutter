
import 'package:flutter/material.dart';
import 'package:http/http.dart';


class Video {

  final String key;
  final String name;

  Video({this.key, this.name});

  factory Video.fromJson(Map<String, dynamic> json){

    return Video(
// getting key to be appende in url
      key : json['key'],
      name: json['name']

    );
  }

}