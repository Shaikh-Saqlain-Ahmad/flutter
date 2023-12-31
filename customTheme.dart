import 'package:flutter/material.dart';
final customTheme=ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(20),borderSide: BorderSide(color: Colors.yellow)),
    errorBorder:OutlineInputBorder(borderRadius:BorderRadius.circular(20),borderSide: BorderSide(color: Colors.red)),
    enabledBorder:OutlineInputBorder(borderRadius:BorderRadius.circular(20),borderSide: BorderSide(color:Colors.green)),
    focusedErrorBorder:OutlineInputBorder(borderRadius:BorderRadius.circular(20),borderSide: BorderSide(color:Colors.orange)),
    disabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(20),borderSide: BorderSide(color:Colors.grey)) 
  ),
);
final darkTheme=ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    focusedBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(20),borderSide: BorderSide(color: Colors.white)),
    errorBorder:OutlineInputBorder(borderRadius:BorderRadius.circular(20),borderSide: BorderSide(color: Colors.red)),
    enabledBorder:OutlineInputBorder(borderRadius:BorderRadius.circular(20),borderSide: BorderSide(color:Colors.pink)),
    focusedErrorBorder:OutlineInputBorder(borderRadius:BorderRadius.circular(20),borderSide: BorderSide(color:Colors.orange)),
    disabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(20),borderSide: BorderSide(color:Colors.grey)) 
  )
  //primarySwatch: MaterialColor(000000,) 
  );
