import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchUrlDemo extends StatefulWidget {
  @override
  _LaunchUrlDemoState createState() => _LaunchUrlDemoState();
}

class _LaunchUrlDemoState extends State<LaunchUrlDemo> {

  Future <void> launched;
  String launchUrl =
      'https://drive.google.com/file/d/1VwelbMeUXvE3WYlaed65fEIDtOhzJebT/view';

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes.ktu'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Note'),
              onPressed: () {
                _launchInBrowser(launchUrl);
              },
            ),
          ],
        ),
      ),
    );
  }
}
