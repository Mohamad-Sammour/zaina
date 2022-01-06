

import 'package:flutter/material.dart';
import 'package:untitled5/constants.dart';
import 'package:untitled5/widgets/custom_btn.dart';
import 'package:untitled5/widgets/custom_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
width: double.infinity,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(

              top :24.0,
            ) ,


            child: Text("Welcom User ,  \n login to your account",
              textAlign: TextAlign.center,
            style: constants.boldHeading,

            ),
          ),
          Column(
            children: [
              CustomInput(),
             CustomInput(),
              CustomBtn(
                text: "Login",
                onPressed: (){
                  print("Cliced the Login button");

                }, outlineBtn: true,

              ),

            ],
          ),

          CustomBtn(
            text: "Create New Account",
            onPressed: (){
              print("Clicked the Create Account Button ");
            },
            outlineBtn: true,
          ),

        ],
      ),
        )
      ),

    );
  }
}
