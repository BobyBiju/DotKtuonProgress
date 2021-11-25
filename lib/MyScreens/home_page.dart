import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/EasyJsonParse/JsonParseDemo.dart';
import 'package:todoey/notes/notes_ktu.dart';
import 'package:todoey/screens/chat_screen.dart';
import 'package:todoey/screens/tasks_screen.dart';



class Home extends StatelessWidget {
  static String id = 'home_page';



  @override
  Widget build(BuildContext context) {
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
                Text(".Ktu",
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    FlatButton(
                      color: Colors.black,
                      onPressed: (){
                        Navigator.push(context, new MaterialPageRoute(
                            builder: (context)=>TasksScreen()
                        ));
                      },
                      child: Text("plans.Ktu",
                        style: TextStyle(
                            color: Colors.white
                        ),),
                    ),
                    Divider(height: 10.0,),
                    FlatButton(
                      color: Colors.black,
                      onPressed: (){
                        Navigator.push(context, new MaterialPageRoute(
                            builder: (context)=>JsonParseDemo()
                        ));
                      },
                      child: Text("notifications.Ktu",
                        style: TextStyle(
                            color: Colors.white
                        ),),
                    ),
                    Divider(height: 10.0,),
                    FlatButton(
                      color: Colors.black,
                      onPressed: (){
                        Navigator.push(context, new MaterialPageRoute(
                            builder: (context)=>ChatScreen()
                        ));
                      },
                      child: Text("ChitChat.Ktu",
                        style: TextStyle(
                            color: Colors.white
                        ),),
                    ),
                    FlatButton(
                      color: Colors.black,
                      onPressed: (){
                        Navigator.push(context, new MaterialPageRoute(
                            builder: (context)=> LaunchUrlDemo()
                        ));
                      },
                      child: Text("Notes.Ktu",
                        style: TextStyle(
                            color: Colors.white
                        ),),
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