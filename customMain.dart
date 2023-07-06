import 'package:flutter/material.dart';
import 'customtheme.dart';
import 'signup.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme:
            customTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.dark,
        home: SignUp() 
        );
  }
}
