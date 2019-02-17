import 'package:flutter/material.dart';
import 'package:medx_ui/Profile.dart';

class firstScreen extends StatefulWidget {

  @override
  firstScreenState createState() {
    return new firstScreenState();
  }
}

class firstScreenState extends State<firstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getListView(),
    );
  }

}


test() {
  return Container(
    padding: EdgeInsets.all(20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text("2019-01-16"),
            Text("4:13 AM"),
          ],
        ),

        //doctor name and appointment
        Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "doctor name",
                  style: TextStyle(color: Colors.blue),
                ),
                Text(
                  "appointment",
                  style: TextStyle(fontSize: 13.0),
                ),
              ],
            ),

            //profile picture
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/tod.jpeg',
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget getListView() {
  return ListView.builder(
      itemCount: 40,
      itemBuilder: (context, index) {
        return test();
      });
}
