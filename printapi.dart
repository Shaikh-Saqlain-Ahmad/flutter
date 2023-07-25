import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}
double latitude=0;
double longitude=0;
double generationtime_ms=0;
var utc_offset_seconds=0;
var timezone='';
var timezone_abbreviation='';
var elevation=0;

class _WeatherState extends State<Weather> {
  // var url=Uri.https('https://www.googleapis.com/','/books/v1/volumes');
  bool isLoading=true;
  callApi()async{
    var url=Uri.https('api.open-meteo.com','v1/forecast',{'longitude':'52','latitude':'52'});
    var response=await http.get(url);
    print("response = ${convert.jsonDecode(response.body)}");
     setState(() {
          isLoading=false;
          if(response.statusCode==200){
            var jsonResponse=convert.jsonDecode(response.body);
            //print("json response= ${jsonResponse["timezone"]}");
            timezone=jsonResponse["timezone"];
           // print("timezone=$timezone");
            latitude=jsonResponse["latitude"];
            longitude=jsonResponse["longitude"];
            generationtime_ms=jsonResponse["generationtime_ms"];
            utc_offset_seconds=jsonResponse["utc_offset_seconds"];
            timezone_abbreviation=jsonResponse["timezone_abbreviation"];
            elevation=jsonResponse["elevation"];
          }
          else{
            timezone="error something wrong";
            print('request failed with status:${response.statusCode}.');
          }
        });
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
      Text("your api data is : $timezone,$longitude,$latitude,$elevation,$generationtime_ms,$timezone_abbreviation,$utc_offset_seconds")
   

      ),
    );
  }
}
