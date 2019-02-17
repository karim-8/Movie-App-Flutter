import 'package:flutter/material.dart';

class contactDoctor extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return contactDoctorState();
  }
  
}

class contactDoctorState extends State<contactDoctor> {
  @override
  Widget build(BuildContext context) {
    
    bool isChecked = false;
    return Scaffold(
      
      body:

 Column(
   mainAxisAlignment: MainAxisAlignment.start,
          textDirection: TextDirection.rtl,
           children: <Widget>[

           Row(
             textDirection: TextDirection.rtl,
             children: <Widget>[
              Padding(
               padding: const EdgeInsets.only(right: 25.0,top: 15.0),
               child: Text("تواصل معي",style: TextStyle(fontSize: 23.0,
                   color: Colors.cyan),),
              ),
             ],
           ),

           Padding(
             padding: const EdgeInsets.only(top: 10.0),
             child: Container(

               margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
               child: TextField(
                 style: TextStyle(height: 8.0),
                 textDirection: TextDirection.rtl,
                 decoration: InputDecoration(
                  filled: true
                 ),
               ),
             ),
           ),


           Padding(
             padding: const EdgeInsets.only(right: 1.0,top: 1.0),
             child: Row(
               children: <Widget>[
                 Expanded(child: Text("السماح للاطباء بمشاهدة ملفي",
                   style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15 ),
                   textDirection: TextDirection.rtl,)),
                 Checkbox(value: isChecked, onChanged: (bool value) {
                 }),
               ],
             ),
           ),

           Padding(
             padding: const EdgeInsets.only(right: 1.0,),
             child: Row(
               children: <Widget>[
                 Expanded(child: Text("استلام نسخه علي بريدي الالكتروني",
                   style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15 ),
                   textDirection: TextDirection.rtl,)),
                 Checkbox(value: isChecked , onChanged: (bool value) {
                 }),
               ],
             ),


           ),

           Padding(
             padding: const EdgeInsets.only(right: 14.0, top: 10.0),
             child: Row(
               children: <Widget>[
                 Expanded(child: Text("الحجم الاقصي المسموح به هو (٤ ميجا بايت)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15 ),
                   textDirection: TextDirection.rtl,)),
                 Icon(Icons.youtube_searched_for)
               ],
             ),


           ),

            // ListView holding user uploads
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Container(

                width: MediaQuery.of(context).size.width,
                height: 150,
                color: Colors.white70,
                child: getListView(),
              ),
            ),

           new InkWell(
             onTap: () => print('hello'),
             child: new Container(
               width: 300.0,
               height: 50.0,
               decoration: new BoxDecoration(
                 color: Colors.cyan,
                 border: new Border.all(color: Colors.white, width: 2.0),
                 borderRadius: new BorderRadius.circular(10.0),
               ),
               child: new Center(child: new Text('ارسال رساله',
                 style: new TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold ,color: Colors.white),),),
             ),
           ),
             
             
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

Widget itemDesign (){

  return Card(
    color: Colors.blueGrey,
  );
}