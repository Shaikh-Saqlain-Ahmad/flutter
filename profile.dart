import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 145, 156, 165),
        appBar: AppBar(title: Text("Profile")),
        body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar( 
                      backgroundColor: Colors.green,
                      radius: 70,
                      backgroundImage: AssetImage("assets/Asif_Ali_Zardari_with_Obamas_(cropped).jpg")
                      // child: Image.asset("assets/Asif_Ali_Zardari_with_Obamas_(cropped).jpg"),
                    ),
                    Positioned(
                      bottom: 5,
                      child:CircleAvatar(
                        backgroundColor: Colors.green,
                    
                      child: const Icon(Icons.camera_alt)

                      )
                    )
                    
                      // child: Image.asset("assets/Asif_Ali_Zardari_with_Obamas_(cropped).jpg"),
                    
                    // ,
                    // Container(
                    //   height: 200,
                    //   width: 200,
                      
                    //   decoration: const BoxDecoration(color: Colors.green,
                    //   borderRadius:BorderRadius.all(Radius.circular(500)),),
                    // )
                  ],

                ),
                Row(
                children:[const Icon(Icons.person),
                Column(
                  children: const [
                    //Icon(Icons.person),
                    Text("Name"),
                    Text("Zardari"),
                    Text(
                        "This is not your user name or pin.")
                  ],
                ),
               
                const Icon(Icons.edit)]
                
              ),
              const SizedBox(height: 20),
              Row(
                children:[const Icon(Icons.person),
                Column(
                  children: const [
                    //Icon(Icons.person),
                    Text("About"),
                    Text("Pakistan Khappay")
                    
                  ],
                ),
               
                const Icon(Icons.edit)]
                
              ),
              const SizedBox(height: 20),
              Row(
                children:[const Icon(Icons.person),
                Column(
                  children: const [
                    //Icon(Icons.person),
                    Text("Phone"),
                    Text("0900-78601")
                    
                  ],
                ),
               
                const Icon(Icons.edit)]
                
              )
              ],
              
              ),
            ),
            
            );
  }
}
