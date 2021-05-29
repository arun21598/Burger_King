import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import 'foodContainer.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white54,
        elevation: 0.0,
        actions: <Widget>[
          Icon(Icons.search),
          SizedBox(width: 20.0),
          Icon(Icons.person_outline),
          SizedBox(width: 20.0),
          Icon(Icons.bookmark_border),
          SizedBox(width: 20.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'BURGER KING',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 16,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: <Widget>[
                  FoodContainer(
                      imagePath: 'assets/images/1.png',
                      name: 'Burger Combo',
                      price: 'Rs.120'),
                  
                  FoodContainer(
                      imagePath: 'assets/images/2.png',
                      name: 'Chicken Burger',
                      price: 'Rs 99'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: <Widget>[
                  
                     
                      FoodContainer(
                          imagePath: 'assets/images/burger.png',
                          name: 'Classic Burger',
                          price: 'Rs.99'),
                 
                  FoodContainer(
                      imagePath: 'assets/images/4.png',
                      name: 'Double Burger',
                      price: 'Rs.149'),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            CircleAvatar(
              backgroundColor: Colors.amber,
              child: Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
