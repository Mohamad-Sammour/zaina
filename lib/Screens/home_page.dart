import 'package:flutter/material.dart';
import 'package:untitled5/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Center(
         child: Text("Home Page " , style: constants.regulerHeading,
    ),

        ),
      ),
    );
    ;
  }
}
