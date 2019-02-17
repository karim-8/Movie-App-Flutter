import 'package:flutter/material.dart';

class patientAppointment extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return patientAppointmentState();
  }

}

class patientAppointmentState extends State<patientAppointment> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        children: <Widget>[
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                 padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.calendar_today,
                          color: Colors.cyan,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text("Last Appointments"),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "Appointments",
                                style: TextStyle(color: Colors.cyan),
                              ),
                              Icon(
                                Icons.headset_mic,
                                color: Colors.cyan,
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Text("Monday, 04 February 2019",
                              style: TextStyle(fontSize:10.0 ),),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

          Divider(
            height: 0.5,
          ),
          // Creating list of items
          Expanded(child: getListView())
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
  return Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: Container(
      height: 80,
              //row for image and text
              child: Column(
                children: <Widget>[
                Row( // parent Row
                  textDirection: TextDirection.rtl,
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0,right: 6),
                      child: Column(
                        children: <Widget>[
                          Text("jan 2019",
                            style: TextStyle(fontSize: 10.0,color: Colors.blueGrey),),
                          Text("8:30 Am",
                            style: TextStyle(fontSize: 10.0,color: Colors.blueGrey),)
                        ],
                      )
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[

                          Text("azaam azzam", style: TextStyle(color: Colors.black,fontSize: 12.0,),),
                          Text("first appointment", style: TextStyle(fontSize: 9.0,color: Colors.blueGrey),),
                          Text("Qualified",style: TextStyle(color: Colors.cyan,fontSize:12.0 ),),


                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(right: 215),
                      child: Column(
                        children: <Widget>[
                          Icon(Icons.arrow_back_ios,color: Colors.grey,)
                        ],
                      ),
                    ),



                  ],
                ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Divider(height: 0,),
                  )
             ],
              ),




    ),
  );


}

