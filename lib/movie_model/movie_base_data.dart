import 'package:movie_app_design/movie_model/Movie.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class BaseMovieModel extends Movie{
  String page;
  String total_results;
  String total_pages;
  List<Movie> results;


  BaseMovieModel({
    this.page,
    this.total_results,
    this.total_pages,
    this.results,
  });


   static BaseMovieModel fromJson(Map<String,dynamic> json){
    return BaseMovieModel(
      page: json['page']?.toString(),
      total_results: json['total_results']?.toString(),
      total_pages: json['total_pages']?.toString(),
        results:
        (json['results'] as List).map((i) => Movie.fromJson(i)).toList());


  }
}