import 'package:flutter/material.dart';
import 'package:lets_pole/screens/poll_creation_form.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lets_pole/screens/first_view.dart';
import 'package:lets_pole/screens/homepage.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';


String initial_route = '/';
void main() async {
  var store = FlutterSecureStorage();
  var token = await store.read(key: 'letspoll');
  print('Hello World ${token} Hello World');
  if (token != null) {
    print('homepage');
    initial_route = '/homepage';
    print('Hello World ${token} Hello World');
    String payload = token.split('.')[1];
    String decoded = B64urlEncRfc7515.decodeUtf8(payload); 

    runApp(MyApp());
  } else if(token==null){
    print('/');
    initial_route = '/';
    runApp(MyApp());
  } else {
    print("Hello World");
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
        '/p_c_f': (context) => poll_creation_form(),
        '/homepage': (context) => homepage(),
      },
    );
  }
}
