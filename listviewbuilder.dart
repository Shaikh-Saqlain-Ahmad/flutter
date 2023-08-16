import 'package:flutter/material.dart';

final List<Map<String, dynamic>> sportsList = [
  {'name': 'Football', 'icon': Icons.sports_soccer},
  {'name': 'Baseball', 'icon': Icons.sports_baseball},
  {'name': 'Tennis', 'icon': Icons.sports_tennis},
  {'name': 'Cricket', 'icon': Icons.sports_cricket},
];
List sportNames = sportsList.map((sport) => sport['name']).toList();
List sportIcons = sportsList.map((sport) => sport['icon']).toList();

class Sports extends StatefulWidget {
  Sports({super.key});

  @override
  State<Sports> createState() => _SportsState();
}

class _SportsState extends State<Sports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Person's Sports")),
      body: ListView.builder(
        itemCount: sportsList.length,
        itemBuilder: (context, index) {
          return ListTile(
              leading: Icon(sportIcons[index]), title: Text(sportNames[index]));
        },
      ),
    );
  }
}
