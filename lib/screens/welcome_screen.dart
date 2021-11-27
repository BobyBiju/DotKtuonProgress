import 'package:todoey/screens/login_screen.dart';
import 'package:todoey/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:todoey/components/rounded_button.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});

    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60,
                  ),
                ),
                TyperAnimatedTextKit(
                  text: ['KtuPlanner'],
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontFamily: 'Bobbers',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(color: Colors.white,text: Text('Log in'),onpressed: (){Navigator.pushNamed(context, LoginScreen.id);},),
            RoundedButton(color: Colors.white,text: Text('Register'),onpressed: (){Navigator.pushNamed(context, RegistrationScreen.id);},),

          ],
        ),
      ),
    );
  }
}
