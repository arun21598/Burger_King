import 'package:burger_king/ui/screens/burgerScreen.dart';
import 'package:burger_king/ui/screens/homepage.dart';
import 'package:burger_king/ui/screens/hotel.dart';
import 'package:flutter/material.dart';





class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int appCurrIndex = 0;
  List<Icon> iconsList = [
    Icon(Icons.home),
    Icon(Icons.local_offer_sharp),
    Icon(Icons.location_city),
    // Icon(Icons.settings),
  ];
  List<Widget> bodyData = [
    new Homepage(),
    new BurgerScreen(),
    new HotelInfo(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        bottomNavigationBar: Container(
            // margin: EdgeInsets.all(15.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
               gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              // borderRadius: BorderRadius.circular(100.0),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List<IconButton>.generate(3, (int i) {
                  return IconButton(
                    color: i == appCurrIndex ? Colors.white : Colors.white70,
                    
                    icon: iconsList[i],
                    iconSize: 30.0,
                    onPressed: () {
                      setState(() {
                        appCurrIndex = i;
                      });
                    },
                  );
                }))),
        body: Container(
          child: bodyData[appCurrIndex],
        ));
  }
}