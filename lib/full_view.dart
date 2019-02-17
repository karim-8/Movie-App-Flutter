import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_app_design/VideoModel/video.dart';
import 'package:movie_app_design/VideoModel/video_model.dart';
import 'package:movie_app_design/Video_View.dart';
import 'package:movie_app_design/movie_model/Movie.dart';
import 'package:http/http.dart' as http;

class full_View extends StatefulWidget {
  Movie movie;

  full_View({@required this.movie});

  @override
  fullViewState createState() {
    return new fullViewState();
  }
}

class fullViewState extends State<full_View> {
  List<Video> videos = new List<Video>();

  @override
  void initState() {
    super.initState();

   fetchMovieId(widget.movie.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            floating: false,
            backgroundColor: Colors.red,
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {
                    //    icon: Icon(Icons.help_outline),
                  }),
            ],
          ),
          SliverFillRemaining(
              child: Expanded(
                child: ListView(
                  padding: EdgeInsets.all(0.0),
                  children: <Widget>[
                    //First Item
                    widget.movie.poster_path != null
                        ? Container(
                        height: 300.0,
                        child: videos.length > 0
                            ? VideoView(videos[0])
                            : Container())
                        : Container(),
                    //Second Item
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          // First Item in row
                          Padding(
                              padding: EdgeInsets.all(10.0),
                              child: widget.movie.poster_path != null
                                  ? Image(
                                  image: NetworkImage(
                                      "http://image.tmdb.org/t/p/w185/" +
                                          widget.movie.poster_path),
                                  height: 150.0,
                                  width: 100.0,
                                  fit: BoxFit.fill)
                                  : Container()),
                          // Second Item in row
                          //film name and relase date
                          Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    widget.movie.title,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    widget.movie.overview,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 10.0),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ]),
                          ),
                          //Third item in row
                          // like Button
                          IconButton(
                              icon: Icon(Icons.star),
                              onPressed: () {
                                //    icon: Icon(Icons.help_outline),
                              })

//                    Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage(imageName),fit: )),)
                        ]),

                    Divider(
                      height: 1.0,
                      color: Colors.blue,
                    ),

                    //Description

                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        widget.movie.overview,
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                    ),

                    Divider(
                      height: 5.0,
                      color: Colors.blue,
                    ),

                    Column(children:
                    getVideoRow())
                  ],
                ),
              ))
        ]));
  }

  getVideoRow() {

  return  videos.map((video) {
      return  GestureDetector(

        onTap: (){

            Navigator.of(context).push(MaterialPageRoute(builder: (c)=>VideoView(video)));

        },

          child: Card(
          elevation: 8,
          margin: EdgeInsets.all(10),
          child: Row(mainAxisAlignment: MainAxisAlignment.start,

          children: <Widget>[
          IconButton(
          icon: Icon(Icons.play_circle_outline, size: 40,),
          onPressed: () {}
          ),
          Expanded(child: Text(video.name,overflow: TextOverflow.ellipsis))

    ],
    )
    ));
    }).toList();
  }


// Calling Request to the
  fetchMovieId(int id) async {
    final response = await http.get(
        "http://api.themoviedb.org/3/movie/$id/videos?api_key=ec298f72dc8c9ad364fda6f08cc2056e");
    //success case
    if (response.statusCode == 200) {
      var x = VideoModel.fromJson(json.decode(response.body));
      x.results.forEach((video) {
        setState(() {
          videos.add(video);
        });
      });
    } else {
      //Error
      throw Exception('faild');
    }
  }
}
