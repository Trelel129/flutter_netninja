import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  late String location;
  String ? time;
  String ? flag;
  String ? url;
  bool ? isDaytime;

  WorldTime({ required this.location, this.flag, this.url});

  Future<void> getTime() async {

    try {
      Response response = await get(Uri.parse("https://worldtimeapi.org/api/timezone/$url"));

      Map data = jsonDecode(response.body);
      print(data);
      // print(data['title']);

      // get properties from data
      String ? datetime = data['datetime'];
      String ? offset = data['utc_offset'].substring(1,3);
      // print(datetime);
      // print(offset);

      //create datetime object
      DateTime now = DateTime.parse(datetime!);
      now = now.add(Duration(hours: int.parse(offset!)));

      //set the time property
      isDaytime = now.hour > 6 && now.hour < 21 ? true : false;
      time = DateFormat.jm().format(now);
    }

    catch (e) {
      print ('caught error: $e');
      time = 'could not get the time data';
    }


  }

}


