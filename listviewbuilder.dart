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
          String Trailing_text = '12/50';
          return ListTile(
              leading: Icon(
                sportIcons[index],
                color: Colors.white,
              ),
              title: Text(
                sportNames[index],
                style: TextStyle(color: Colors.white),
              ),
              trailing: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.red),
                child: //child used because we are wrapping text in container
                    Text(Trailing_text, style: TextStyle(color: Colors.white)),
              ));
        },
      ),
      backgroundColor: Colors.black,
    );
  }
}
