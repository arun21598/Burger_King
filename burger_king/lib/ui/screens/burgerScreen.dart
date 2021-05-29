import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BurgerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Rs.99 ',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 14,
                  color: Colors.amber,
                  // fontWeight: FontWeight.w200,
                ),
              ),
              // textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Text(
                      'BURGER',
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height / 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Image(
                      image: AssetImage('assets/images/1.png'),
                      width: 200.0,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Special Offer',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 28.0,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Is You are fond of the Burger King combo of the Burger king Then this offer brings you the Thick shakes at Rs 99 only.This is limited period offer.This offer is for all users',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black54,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[500],
                        offset: Offset(0.0, 1.5),
                        blurRadius: 1.5,
                      ),
                    ],
                    gradient: LinearGradient(
                        colors: [Color(0xFFF4B326), Color(0xFFF29428)]),
                  ),
                  child: Text(
                    'ORDER NOW',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:20
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
