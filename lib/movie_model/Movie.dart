import 'package:flutter/material.dart';
import 'package:http/http.dart';


class Movie {

  final int id;
  final double vote_average;
  final String title;
  final String poster_path;
  final String backdrop_path;
  final String overview;
  final String release_date;

  Movie({
    this.title,
    this.id,
    this.backdrop_path,
    this.overview,
    this.poster_path,
    this.release_date,
    this.vote_average
  });

  factory Movie.fromJson(Map<String, dynamic> json){
    return Movie(
        id : json['id'],
        title : json['title'],
        backdrop_path : json['backdrop_path'],
        overview : json['overview'],
        poster_path : json['poster_path'],
        release_date : json['release_date'],
        vote_average : double.tryParse(json['vote_average']?.toString())

    );
  }

}

