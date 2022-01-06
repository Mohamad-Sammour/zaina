import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled5/Screens/home_page.dart';
import 'package:untitled5/Screens/login_page.dart';
import 'package:untitled5/constants.dart';

class LandingPage extends StatelessWidget{

  final Future<FirebaseApp> _initialization= Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
        future: _initialization ,
        builder: (context,snapshot) {

          if (snapshot .hasError){

            return Scaffold(
              body: Center(
                child:  Text("Error :${snapshot.error}"),


              ),

            );


          }


          if(snapshot.connectionState == ConnectionState.done){

            return StreamBuilder(
              stream: FirebaseAuth.intance.authStateChanges(),
              builder: (context , streamSnapshot) {
                if (snapshot .hasError){

                  return Scaffold(
                    body: Center(
                      child:  Text("Error :${streamSnapshot.error}"),


                    ),

                  );


                }
                //connection state active

                if(streamSnapshot.connectionState == ConnectionState.active){

                  User _user = streamSnapshot.data;

                  if(_user == null){
                    return LoginPage();




                  } else {
                    return HomePage();

                  }

                }

                return Scaffold(


                  body: Center(

                    child: Text("Checking Authentication.... " , style: constants.regulerHeading,),

                  ),
                );



              },

            );


          }



          return Scaffold(


            body: Center(

              child: Text("Intitializtion App"),

            ),
          );





        },

    ); //MaterialApp
  }




}