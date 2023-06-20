import 'package:flutter/material.dart';

class Netflix extends StatefulWidget {
  const Netflix({super.key});

  @override
  State<Netflix> createState() => _NetflixState();
}

class _NetflixState extends State<Netflix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Image.network(
            "https://images.ctfassets.net/4cd45et68cgf/Rx83JoRDMkYNlMC9MKzcB/2b14d5a59fc3937afd3f03191e19502d/Netflix-Symbol.png?w=700&h=456"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(children: [
        Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIsguG052Infmr7euZn-o8fEq7mo88HO4mjA&usqp=CAU"),
             SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, index){
                  return Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      height: 150,
                    width: 50,
                    color: index %2==0? Colors.red:Colors.green,
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIsguG052Infmr7euZn-o8fEq7mo88HO4mjA&usqp=CAU"),

                    ) 
                  );
                },
              ),
             )
      ]),
    );
  }
}

