
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:productapp/agents.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:flutter_icons/flutter_icons.dart';


void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  var rating;
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFa07429),
          primaryColorDark: Color(0xFF212121),
      ),
        home: new product_app(),
    );

  }
}

class product_app extends StatefulWidget {
  @override
  _product_appState createState() => _product_appState();
}

class _product_appState extends State<product_app> {

  double rating = 3.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AgentsPage(),
    );
  }
}




