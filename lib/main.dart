

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:todoey/screens/app_info_screen.dart';
import 'package:todoey/screens/instructions_screen.dart';
import 'package:todoey/screens/settings_screen.dart';
import 'package:todoey/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:todoey/MyScreens/home_page.dart';
import 'package:todoey/screens/welcome_screen.dart';
import 'package:todoey/screens/registration_screen.dart';
import 'package:todoey/screens/login_screen.dart';
import 'package:todoey/screens/chat_screen.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> main() async {


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  var initializationSettingsAndroid = AndroidInitializationSettings('app_icon');
  var initializationSettingsIOS = IOSInitializationSettings();
  var initializationSettings = InitializationSettings(
      initializationSettingsAndroid, initializationSettingsIOS);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  runApp(ChangeNotifierProvider<TaskData>(
    create: (_) => TaskData(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<TaskData>(context).currTheme,
      title: 'ToDoey',
      initialRoute: WelcomeScreen.id,
      routes: {
        ChatScreen.id: (context) =>ChatScreen(),
        RegistrationScreen.id: (context) =>RegistrationScreen(),
        LoginScreen.id: (context) =>LoginScreen(),
        WelcomeScreen.id: (context) =>WelcomeScreen(),
        Home.id: (context)=>Home(),
        TasksScreen.id: (context) => TasksScreen(),
        AddTaskScreen.id: (context) => AddTaskScreen(),
        AppInfoScreen.id: (context) => AppInfoScreen(),
        InstructionsScreen.id: (context) => InstructionsScreen(),
        SettingsScreen.id: (context) => SettingsScreen(),
      },
    );
  }
}
