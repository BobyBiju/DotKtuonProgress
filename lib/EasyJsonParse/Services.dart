import 'dart:convert';

import 'package:http/http.dart' as http;
import 'Notifications.dart';

class Services{
  static const String url ='https://ktunotification.herokuapp.com/';

  Future<Notifications> getNotifications() async{
    var client =http.Client();
    var notifications;
    try{
      var response = await client.get(url);

      if( response.statusCode==200){
        var jsonString=response.body;
        var jsonMap= json.decode(jsonString);
        notifications= Notifications.fromJson(jsonMap);
      }

    }catch(e){
      notifications=null;
      return notifications;
    }
    return notifications;

  }
}