import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstructionsScreen extends StatelessWidget {
  static String id = 'InstructionsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.arrowLeft,
                  size: 30.0,
                  color: Colors.grey,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InstructionTile(
                    title:
                    '*Notifications.ktu will give live updates as soon as KTU releases them'
                        '* On pressing Click Me we can download the circular to phone storage'
                        '*Use OneDRive to open downloaded file',

                  ),
                  InstructionTile(
                    title: 'On seeing relevant notifications we can set plans on plans.ktu and start working to accomplish it',
                  ),
                  InstructionTile(
                    title:
                    'In time of need we can communicate and help other fellow ktu students by using ChitChat.ktu',
                  ),
                  InstructionTile(
                    title: 'We can study using the notes provided by the app using Notes.ktu',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InstructionTile extends StatelessWidget {
  InstructionTile({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(
        5.0,
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: ListTile(
        leading: Icon(
          FontAwesomeIcons.greaterThan,
          size: 25.0,
        ),
        title: Text(title,
          style: TextStyle(
            color: Colors.white,
          ),),
      ),
    );
  }
}
