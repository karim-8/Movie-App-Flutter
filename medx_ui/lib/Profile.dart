import 'package:flutter/material.dart';


class secondScreen extends StatefulWidget {
  @override
  secondScreenState createState() {
    return secondScreenState();
  }
}

class secondScreenState extends State<secondScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: getListView()
    );
  }


}
Widget getListView() {
  return ListView.builder(
      itemCount: 40,
      itemBuilder: (context, index) {
        return itemDesign();
      });
}

Widget itemDesign() {

  return Container(
    padding: EdgeInsets.all(10.0),
    child: Column(

      textDirection: TextDirection.rtl,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // first Row holding user photo and name
        Row(
          textDirection: TextDirection.rtl,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/tod.jpeg',
                ),
              ),
            ),
            Text("Doctor name"),
          ],
        ),

        Row(
          textDirection: TextDirection.rtl,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: new Switch(value: true, onChanged: null),
            ),
            Text("Let others look to my profile"),

          ],
        ),

        RaisedButton(
          child: Text("Book Appointment"),
          onPressed: (){},
          // clipBehavior: ,
          color: Colors.cyan,
          textColor: Colors.white,
        ),
      ],
      // second row holding radio button and text
    ),
  );
}
