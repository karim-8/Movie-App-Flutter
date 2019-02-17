import 'package:flutter/material.dart';

class appointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

   body: Column(
     children: <Widget>[
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             RaisedButton(onPressed: (){},color: Colors.white70,
               child: Text("mo3tamed",style: TextStyle(color: Colors.cyan),),
             ),
             Text("Doctor Name",style: TextStyle(color: Colors.cyan),),
           ],
         ),
       ),
       Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.access_time),
          ),
          Text("From", style: TextStyle(fontSize: 20.0),),
        ],
      ),


       Row(
         textDirection: TextDirection.rtl,
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.only(right:50.0),
             child: Text("2019-01-19 08:00:00", style: TextStyle(fontSize: 15.0,
                 color: Colors.blueGrey),),
           ),
         ],
       ),

       Row(
         textDirection: TextDirection.rtl,
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.only(right: 50.0,top: 10.0),
             child: Text("To", style: TextStyle(fontSize: 20.0),),
           ),
         ],
       ),


       Row(
         textDirection: TextDirection.rtl,
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.only(right:50.0),
             child: Text("2019-01-19 08:15:00", style: TextStyle(fontSize: 15.0,
                 color: Colors.blueGrey),),
           ),
         ],
       ),

       Row(
         textDirection: TextDirection.rtl,
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Icon(Icons.local_taxi),
           ),
           Text("Address", style: TextStyle(fontSize: 20.0),),
         ],
       ),


       Row(
         textDirection: TextDirection.rtl,
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.only(right:50.0,bottom: 30.0),
             child: Text(",,, JOR", style: TextStyle(fontSize: 15.0,
                 color: Colors.blueGrey),),
           ),
         ],
       ),



       Container(
         margin: EdgeInsets.all(30.0),
         height: 120,
         padding: EdgeInsets.only(top: 20.0),
         decoration: BoxDecoration(
           border: Border.all(color: Colors.cyan)
         ),

         child: Column(
           children: <Widget>[

             Row(
               textDirection: TextDirection.rtl,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.only(right:20.0,),
                   child: Text("Note", style: TextStyle(fontSize: 18.0,
                       color: Colors.black),),
                 ),

                     Padding(
                       padding: const EdgeInsets.only(left:40.0,),
                       child: Text("first appointment", style: TextStyle(fontSize: 15.0,
                           color: Colors.blueGrey),),
                     ),

               ],
             ),


             Container(
               padding: EdgeInsets.only(top: 10.0),
               width: 250,

               child: Divider(height: 1.0,
                 color: Colors.black,),
             ),


             Row(
               textDirection: TextDirection.rtl,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.only(right:20.0,top: 10.0),
                   child: Text("Paid Charge", style: TextStyle(fontSize: 18.0,
                       color: Colors.black),),
                 ),

                 Padding(
                   padding: const EdgeInsets.only(left:106.0,top: 10.0),
                   child: Text("20 USD", style: TextStyle(fontSize: 15.0,
                       color: Colors.blueGrey),),
                 ),

               ],
             ),

           ],
         ),
       ),

      Container(
        height: 120,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ButtonTheme(
              padding: EdgeInsets.all(10.0),
              minWidth: 300,
              height: 50,
              child: RaisedButton(onPressed: (){},
                color: Colors.cyan,
                child: Text("Accept",style: TextStyle(color: Colors.white),),
              ),
            ),
            ButtonTheme(
              padding: EdgeInsets.all(10.0),
              minWidth: 300,
              height: 50,
              child: RaisedButton(onPressed: (){},
                color: Colors.cyan,
                child: Text("Rject",style: TextStyle(color: Colors.white),),
              ),
            ),

          ],
        ),
      ),



      ],
     ),
    );
  }
}