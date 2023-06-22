import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.play_arrow),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Image.asset("assets/netflix.jpg"),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/strangerthings.jpg"),
          Text('Stranger Things',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              )),
          SizedBox(height: 12),
          Row(
            children: [
              Text('Suspenful',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.left),Padding(padding: EdgeInsets.all(8)),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    maxRadius: 3,
                  ),Padding(padding: EdgeInsets.all(2)),
              Text('thriller',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.left),Padding(padding: EdgeInsets.all(8)),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    maxRadius: 3,
                  ),
                  Padding(padding: EdgeInsets.all(2)),
              Text('exciting',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.left),Padding(padding: EdgeInsets.all(8)),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5)
                      ), 
                    ),
                    child:Text('18+ ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.left) ,
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  // Text('18+ ',
                  // style: TextStyle(
                  //   color: Colors.white,
                  //   fontSize: 11,
                  // ),
                  // textAlign: TextAlign.left),Padding(padding: EdgeInsets.all(8)),
                  
                  Text('4 parts ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                  textAlign: TextAlign.left)
            ],
          )
        ],
      ),
    );
  }
}
