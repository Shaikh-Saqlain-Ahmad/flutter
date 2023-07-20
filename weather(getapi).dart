import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  // var url=Uri.https('https://www.googleapis.com/','/books/v1/volumes');
  bool isLoading=true;
  callApi()async{
    var url=Uri.https('www.googleapis.com','books/v1/volumes',{'q':'http'});
    var response=await http.get(url);
    print("response = ${convert.jsonDecode(response.body)}");
    isLoading=false;
  }
  @override
  void initState(){
    super.initState();
    callApi();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
      ),
      body: Center(child: isLoading?CircularProgressIndicator():
      Text("api response completed")),
    );
  }
}
