import 'package:flutter/material.dart';

class changeLanguage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return searchState();
  }

}

class searchState extends State<changeLanguage>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:

      Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(

          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                 Icon(Icons.close,color: Colors.cyan)
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Container(
                  height: 150,
                  child: Column(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      Container(
                        width: 200,
                        height: 40,
                        child: RaisedButton(onPressed: (){},
                          color: Colors.cyan,
                          child: Text("العربية",style: TextStyle(color: Colors.white),),),
                      ),

                      Container(
                        width: 200,
                        height: 40,
                        child: RaisedButton(onPressed: (){},
                          color: Colors.cyan,
                          child: Text("English",style: TextStyle(color: Colors.white),),),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}