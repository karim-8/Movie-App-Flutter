import 'package:flutter/material.dart';

class searchResults extends StatefulWidget {
  @override
  SearchResultState createState() {
    return SearchResultState();
  }
}

class SearchResultState extends State<searchResults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text("2019-02-04"),
                        Text("2019-02-04")
                      ],
                    ),
                    Icon(
                      Icons.calendar_today,
                      color: Colors.cyan,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Rent property",
                      style: TextStyle(color: Colors.cyan),
                    ),
                    Icon(
                      Icons.home,
                      color: Colors.cyan,
                    ),
                  ],
                ),
              ],
            ),
          ),
        Expanded(child: getListView()
        )
          //getListView()
        ],
      ),
    );
  }
}

Widget getListView() {
  return ListView.builder(
    itemCount: 40,
    itemBuilder: (context, index) {
      return itemDesign(); //itemDesign();
    },
  );
}

Widget itemDesign() {
  return Card(
      child: Row( // parent Row
        textDirection: TextDirection.rtl,
    children: <Widget>[

      //row for image and text
      Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'images/tod.jpeg',
              ),
            ),
          ),

          Column( //texts Columns
            children: <Widget>[
              Text("Jordan Amman ", style: TextStyle(color: Colors.cyan),),
              Text("Bedrooms, Bathrooms "),
              Text("100& per day",style: TextStyle(color: Colors.green)),

              Container(
                width: 200.0,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    RaisedButton(child: Text("Rent",
                        style: TextStyle(color: Colors.white)),
                      onPressed: () {},
                      color: Colors.cyan,),
                    RaisedButton(child: Text("Message",
                      style: TextStyle(color: Colors.white),),
                      onPressed: () {},
                      color: Colors.cyan,),
                  ],
                ),
              ),
            ],
          ),

        ],
      ),
     ]
  ));
}
