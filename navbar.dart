import 'package:flutter/material.dart';
import 'sports.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int Selected_index = 0;
  void Ontap(int index) {
    setState(() {
      Selected_index = index;
    });
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Sports()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Practice')),
      body: Center(//add body code here
          ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Sports Details',
            backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: Selected_index,
        selectedItemColor: Colors.red,
        onTap: Ontap,
      ),
    );
  }
}
