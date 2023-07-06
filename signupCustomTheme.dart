import 'package:flutter/material.dart';
import 'customtheme.dart';
class SignUp extends StatelessWidget{
  const SignUp({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar:  AppBar(title: const Text("SignUp")),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children:  [
            SizedBox(height: 28),
            Text(
              "login page",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold),
                ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  // decoration: InputDecoration(
                  //   label: Text("User id"),
                  //   hintText: "Please enter your email",
                  //   border: Theme.of(context).inputDecorationTheme.enabledBorder
                   
                    //),
                )
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                //   decoration: InputDecoration(
                //     label: Text("Password"),
                //     hintText: "Enter your password",
                    
                //     border: Theme.of(context).inputDecorationTheme.enabledBorder),
                 ),
              )
            ],
          ),
        ),
      );
    }
  }
