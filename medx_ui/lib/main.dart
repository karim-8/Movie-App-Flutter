import 'package:flutter/material.dart';
import 'package:medx_ui/Bills.dart';
import 'package:medx_ui/Home.dart';
import 'package:medx_ui/Package.dart';
import 'package:medx_ui/Profile.dart';
import 'package:medx_ui/Doctor.dart';
import 'package:medx_ui/Property.dart';
import 'package:medx_ui/patient.dart';
import 'package:medx_ui/contactDoctor.dart';
import 'package:medx_ui/changeLanguage.dart';

void main() => runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.pink, primarySwatch: Colors.pink),
    home: new Home(
    )));

class Home extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {

  String mainTitle = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mainTitle),
        backgroundColor: Colors.cyan,
        leading: Icon(
          Icons.person_pin,
          size: 30.0,
          color: Colors.white,
        ),
        actions: <Widget>[
          Icon(
            Icons.menu,
            size: 30.0,
            color: Colors.white,
          ),
        ],
      ),
      body: callingDifftrenView(currentButtonIndex),

      bottomNavigationBar: new Theme(

          data: Theme.of(context).copyWith(
            // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.cyan,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.white,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.black)),
            primaryTextTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.black)),
          ),

          // sets the inactive color of the `BottomNavigationBar`
          child: BottomNavigationBar(

            currentIndex: currentButtonIndex,
            onTap: (value){
              setState(() {
                currentButtonIndex = value;
                changeTitle(value);
              });
            } ,
            type: BottomNavigationBarType.fixed,

            items: [

              BottomNavigationBarItem(
                icon: Icon(
                  Icons.star,
                  color: Colors.black,
                ),
                title: Text("Home",style: TextStyle(color: Colors.black),),

              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.map,
                  color: Colors.black,
                ),
                title: Text("Profile",
                  style: TextStyle(color: Colors.black),),

              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.movie,
                  color: Colors.black,
                ),
                title: Text("Package",style: TextStyle(color: Colors.black),),
              ),
              BottomNavigationBarItem(

                icon: Icon(
                  Icons.help,
                  color: Colors.black,
                ),
                title: Text("Property",style: TextStyle(color: Colors.black)),
              ),

              BottomNavigationBarItem(

                icon: Icon(
                  Icons.assistant_photo,
                  color: Colors.black,
                ),
                title: Text("doctor ",style: TextStyle(color: Colors.black)),
              ),

              BottomNavigationBarItem(

                icon: Icon(
                  Icons.assistant,
                  color: Colors.black,
                ),
                title: Text("Patient",style: TextStyle(color: Colors.black)),
              ),

              BottomNavigationBarItem(

                icon: Icon(
                  Icons.assistant,
                  color: Colors.black,
                ),
                title: Text("Bills",style: TextStyle(color: Colors.black)),
              ),

              BottomNavigationBarItem(

                icon: Icon(
                  Icons.assistant,
                  color: Colors.black,
                ),
                title: Text("Contact",style: TextStyle(color: Colors.black)),
              ),



              BottomNavigationBarItem(

                icon: Icon(
                  Icons.assistant,
                  color: Colors.black,
                ),
                title: Text("Language",style: TextStyle(color: Colors.black)),
              ),

              BottomNavigationBarItem(

                icon: Icon(
                  Icons.assistant,
                  color: Colors.black,
                ),
                title: Text("searchOptions",style: TextStyle(color: Colors.black)),
              ),

            ],
          )),
    );
  }

//calling widgets upon index
  int currentButtonIndex = 0;
  Widget callingDifftrenView(int currentButtonIndex) {

    if(currentButtonIndex == 0 ){
      return firstScreen();
    }else if (currentButtonIndex == 1) {

      return secondScreen();
    } else if (currentButtonIndex == 2) {

     return packages();
    }else if(currentButtonIndex == 3) {

      return searchResults();
    }
    else if(currentButtonIndex == 4) {
      return appointment();

    }else if(currentButtonIndex == 5) {
      return patientAppointment();

    }else if(currentButtonIndex == 6){
      return Bills();

    }else if(currentButtonIndex == 7) {
      return contactDoctor();

    }else if(currentButtonIndex == 8) {
      return changeLanguage();
    }
  }


  void changeTitle(int index){
    if(index == 0){
      mainTitle = "Home";
    }else if(index == 1){
      mainTitle = "Profile";
    }else if (index == 2){
      mainTitle = "Package";
    }else if (index == 3){
      mainTitle = "Property";
    } else if(index == 4) {
      mainTitle = "Doctor";
    }else if(index == 5){
      mainTitle = "Patient";
    }else if(index == 6){
      mainTitle = "Search Options";
    }



  }
}



