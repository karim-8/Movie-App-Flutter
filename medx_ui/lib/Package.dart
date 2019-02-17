import 'package:flutter/material.dart';

class packages extends StatefulWidget {
  @override
  packagesState createState() {
    return packagesState();
  }
}

class packagesState extends State<packages> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getListView(),
    );
  }




// lIST VIEW OF ITEMS
Widget getListView() {
  return Center(
    child: ListView.builder(
        itemCount: 40,
        itemBuilder: (context, index) {
          return itemDesign();
        }),
  );
}

//ITEM DESIGN
Widget itemDesign() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            verticalDirection: VerticalDirection.up,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[Image.asset('images/tod.jpeg')],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RaisedButton(
              child: Text("500 USD"),
              onPressed: () {},
              color: Colors.cyan,
              textColor: Colors.white,
            ),
            Text("test payment package\n Doctor name "),
          ],
        ),
      ),

    ],
  );
}}
