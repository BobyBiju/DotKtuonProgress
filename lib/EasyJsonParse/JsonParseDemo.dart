import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'Notifications.dart';
import 'Services.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';





class JsonParseDemo extends StatefulWidget {

  @override
  _JsonParseDemoState createState() => _JsonParseDemoState();
}

class _JsonParseDemoState extends State<JsonParseDemo> {
  Future<Notifications> _notifications;




  Future<void> _launchInBrowser(String url) async {
    // if (await canLaunch(url)) {
    //   await launch(
    //     url,
    //     forceSafariVC: false,
    //     forceWebView: false,
    //     headers: <String, String>{'header_key': 'header_value'},
    //   );
    // } else {
    //   throw 'Could not launch $url';
    // }
    launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers: <String, String>{'header_key': 'header_value'},
    );
  }


  @override
  void initState() {
    _notifications=Services().getNotifications();
    super.initState();
  }

  var defaultText= TextStyle(
    color: Colors.black,
  );
  var linkText = TextStyle(
    color: Colors.blue
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("notifications.Ktu",
          style: TextStyle(
              fontWeight: FontWeight.w400
          ),),
      ),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))
        ),
        child: FutureBuilder<Notifications>(
          future: _notifications,
          builder: (context,snapshot){
            if(snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.notifications.length,
                  itemBuilder: (context, index) {
                    var notification= snapshot.data.notifications[index];
                    return ListTile(
                      title: Text(notification.title),
                      subtitle: Text(notification.description),
                      // trailing: RichText(
                      //   text: TextSpan(
                      //     children: [
                      //       TextSpan(
                      //         style: defaultText,
                      //         text: "Click"
                      //       ),
                      //       TextSpan(
                      //         style: linkText,
                      //         text: "here",
                      //         recognizer: TapGestureRecognizer()..onTap=() async{
                      //           var urll =notification.links.last;
                      //           if(await canLaunch("$urll")){
                      //             await launch("$urll");
                      //             print(urll);
                      //           }else{
                      //             throw "Cannot load";
                      //           }
                      //         }
                      //       ),
                      //     ]
                      //   ),
                      // ),
                      trailing: RaisedButton(

                        child: Text('Click Me'),
                        onPressed: () => openFile(
                          urlll: "${notification.links[0].url}"
                        ,fileName: 'download',
                        )
                      ),

                    );
                  }
                  );
            }else{return Center(child: CircularProgressIndicator());}
          },

        ),


      ),
    );
  }
  Future openFile({String urlll, String fileName}) async {
    final file =await downloadFile(urlll, fileName);
    if(file==null) return;
    print('Path: ${file.path}');
    OpenFile.open(file.path);
  }

  Future<File> downloadFile(String urlll, String name) async {
    final appStorage =await getApplicationDocumentsDirectory();
    final file = File('${appStorage.path}/$name');
    try {
      final response = await Dio().get(urlll,
        options: Options(
          responseType: ResponseType.bytes,
          followRedirects: false,
          receiveTimeout: 0,
        ),
      );
      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(response.data);
      await raf.close();
      return file;
    }catch(e){
      return null;
    }
  }

}