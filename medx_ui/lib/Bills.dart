import 'package:flutter/material.dart';


class Bills extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BillsState();
  }
}

class BillsState extends State<Bills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body:   getListView()

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

  return Column(

    children: <Widget>[


      Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            // first column

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,

              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'images/tod.jpeg',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text("النوع",style: TextStyle(color: Colors.cyan,fontSize: 20.0),),
                ),
                Text("رسوم الموعد",style: TextStyle(color: Colors.blueGrey),),

                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text("الملاحظه",style: TextStyle(color: Colors.cyan,fontSize: 20.0),),
                ),

                Text("Mobile Payment",style: TextStyle(color: Colors.blueGrey,fontSize: 13.0),),


              ],
            ),
          ),

          //second column
          Padding(
            padding: const EdgeInsets.only(bottom: 70.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[

                Text("فاتوره# 512",style: TextStyle(color: Colors.blueGrey,fontSize: 14.0),),
                Text("azzam azzam",style: TextStyle(color: Colors.cyan,fontSize: 13.0),),
                Text("2019-01-16 08:46:36",style: TextStyle(color: Colors.blueGrey,fontSize: 13.0),),


              ],
            ),
          ),

          //third column

          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Column(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Text("20.000 USD",style: TextStyle(color: Colors.cyan,fontSize: 16.0),),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 53.0),
                  child: RaisedButton(onPressed: (){},
                    color: Colors.white70,child: Text("مدفوعه"),),
                )
              ],
            ),
          ),


        ],
      ),

      Divider(height: 1.0,)
    ],
  );
}
