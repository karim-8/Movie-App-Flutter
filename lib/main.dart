import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:movie_app_design/Item_design.dart';
import 'package:movie_app_design/full_view.dart';
import 'dart:async';
import 'package:movie_app_design/movie_model/movie_base_data.dart';

void main() => runApp(MaterialApp(home:new MainPage(mainTitle: "Movie App",)));

class MainPage extends StatefulWidget {
  final String mainTitle;

  MainPage({this.mainTitle}) : super();


  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.mainTitle),
          backgroundColor: Colors.red,
          leading: Icon(Icons.menu, size: 30.0, color: Colors.white,),
          actions: <Widget>[
            Icon(Icons.more_vert, size: 30.0, color: Colors.white,),
          ],
        ),

        // MARK:- GridView
        body:
        FutureBuilder<BaseMovieModel>(
            future: fetchMovie(),
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return Center(child: CircularProgressIndicator(strokeWidth: 10.0,backgroundColor: Colors.red));
              } else {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemBuilder: (context , postion)=>
                    GestureDetector(
                    child:ItemDesign(movie: snapshot.data.results[postion],
                      backgroundColor: colors[postion%colors.length],) ,
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (c)=> full_View(movie: snapshot.data.results[postion])));
                      },

                 )
                );}
              }));

  }
}
// Views Colors:

List<Color>
colors=[
  Colors.blueAccent,
  Colors.red,
  Colors.yellow,
  Colors.indigo];




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "movie-App", home: MainPage(mainTitle: "Movie App"));
  }
}

// MARK:- Calling Api ::fetching request
Future<BaseMovieModel> fetchMovie() async {
  final response = await http.get(
      'http://api.themoviedb.org/3/movie/popular?api_key=ec298f72dc8c9ad364fda6f08cc2056e');

  //success case
  if (response.statusCode == 200) {
    return BaseMovieModel.fromJson(json.decode(response.body));
  } else {
    //Error
    throw Exception('faild');
  }
}

