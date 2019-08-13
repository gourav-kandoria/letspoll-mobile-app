import 'package:flutter/material.dart';
import 'package:lets_pole/screens/poll_creation_form.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lets_pole/screens/first_view.dart';
import 'package:lets_pole/screens/homepage.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:shared_preferences/shared_preferences.dart';

String initial_route = null;
String tok;
void main() async{
  final store = await SharedPreferences.getInstance();
  try {String token = store.getString('letspole');
    tok = token;
    if(token!= null){
      initial_route = 'homepage';
      runApp(MyApp());
    }
    else {
      initial_route = 'firstview';
      runApp(MyApp());
    }
  }
  catch(e) {
    print(e);
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: initial_route,
      routes: {
        '/': (context) => first_view(),
        'firts_view': (context) => first_view(),
        'p_c_f': (context) => poll_creation_form(),
        'homepage': (context) => homepage(tok),
        
      },
    );
  }
}

