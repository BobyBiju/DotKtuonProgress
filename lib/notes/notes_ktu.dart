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
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Notes.ktu'),
    //   ),
    //   body: Container(
    //     child: Column(
    //       children: <Widget>[
    //         RaisedButton(
    //           child: Text('Note'),
    //           onPressed: () {
    //             _launchInBrowser(launchUrl);
    //           },
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    return Scaffold(
      backgroundColor: Colors.black,


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top:60.0,left: 30.0,right: 30.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 10.0,),
                Text("notes.Ktu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),


              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top:60.0,left: 30.0,right: 30.0,bottom: 30.0),
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(right: 200.0),
                child: ListView(
                  children: [
                    Container(width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [RaisedButton(
                          child: Text('BEE'),
                          onPressed: () {
                            _launchInBrowser('https://pattern-filament-145.notion.site/Basics-of-Electrical-Electronics-a1c43bd80823432eb072e5a877fb3a5e');
                          },
                        ),
                          RaisedButton(
                            child: Text('BCM'),
                            onPressed: () {
                              _launchInBrowser('https://pattern-filament-145.notion.site/Basics-of-Civil-and-Mechanical-de136359168140d7989b890fdef40c65');
                            },
                          ),

                          RaisedButton(
                            child: Text('C PROGRAMMING'),
                            onPressed: () {
                              _launchInBrowser('https://pattern-filament-145.notion.site/C-Programming-103aa2ac6f6a4339915c2f57612e1200');
                            },
                          ),
                          RaisedButton(
                            child: Text('GRAPHICS'),
                            onPressed: () {
                              _launchInBrowser('https://pattern-filament-145.notion.site/Engineering-Graphics-670e52c5feb84f10aab5480b0d39cddb');
                            },
                          ),
                          RaisedButton(
                            child: Text('MECHANICS'),
                            onPressed: () {
                              _launchInBrowser('https://pattern-filament-145.notion.site/Engineering-Mechanics-57859df3714345d48de7c4abf715de86');
                            },
                          ),
                          RaisedButton(
                            child: Text('CHEMISTRY'),
                            onPressed: () {
                              _launchInBrowser('https://pattern-filament-145.notion.site/Engineering-Chemistry-64350211865440cbb39045aa09fa1e81');
                            },
                          ),

                          RaisedButton(
                            child: Text('PHYSICS'),
                            onPressed: () {
                              _launchInBrowser('https://pattern-filament-145.notion.site/Engineering-Physics-1941c174a566422789c0e644bea9bcf3');
                            },
                          ),
                          RaisedButton(
                            child: Text('MATHS SEM-1'),
                            onPressed: () {
                              _launchInBrowser('https://pattern-filament-145.notion.site/Maths-Sem-One-dc05ea826fde4833afb7ca95eac92f46');
                            },
                          ),

                          RaisedButton(
                            child: Text('MATHS SEM-2'),
                            onPressed: () {
                              _launchInBrowser('https://pattern-filament-145.notion.site/Maths-Sem-Two-8d524ed280304d72888cf02ce5b147ac');
                            },
                          ),
                          RaisedButton(
                            child: Text('PCOM'),
                            onPressed: () {
                              _launchInBrowser('https://pattern-filament-145.notion.site/Professional-Communication-f4cbc478631043f9954879f8c362f74f');
                            },
                          ),

                          RaisedButton(
                            child: Text('LIFE SKILLS'),
                            onPressed: () {
                              _launchInBrowser('https://pattern-filament-145.notion.site/Life-Skills-c45a413c28014e85b8daf2a12b57305d');
                            },
                          ),
                        ],
                      ),
                    ),
                  ],

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
