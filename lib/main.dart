import 'package:ethinicty_recognition_app/models/user.dart';
import 'package:ethinicty_recognition_app/screens/ml_tasks/task1.dart';
import 'package:ethinicty_recognition_app/screens/ml_tasks/task2.dart';
import 'package:ethinicty_recognition_app/screens/wrapper.dart';
import 'package:ethinicty_recognition_app/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
        value: AuthService().user,
        child: MaterialApp(
          //initialRoute: '/',
          routes: {
            '/task1' : (context) => MLTask1(),
            '/task2' : (context) => MLTask2()
          },
          debugShowCheckedModeBanner: false,
          home: Wrapper(),
      ),
    );
  }
}
