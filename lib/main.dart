import 'dart:io';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:lets_pole/admin_login_page.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lets_pole/first_view.dart';
import 'package:lets_pole/homepage.dart';
import 'dart:convert';

const server_url = "http://192.168.43.232:8000";
String initial_route = '/';
void main() async {
  var store = FlutterSecureStorage();
  var token = await store.read(key: 'letspoll');
  if (token == null) {
    Client client;
    var response = await client.get('${server_url}/',
        headers: {'AUTH-TOKEN': token});
    Map<String, dynamic> authorization_info = json.decode(response.body);
    }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( // This is the theme of your application.
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
      initialRoute: '/',
      routes: {
        '/': (context) => first_view(),
        '/a_l_p': (context) => admin_login_page(),
        '/homepage': (context) => homepage(),
      },
    );
  }
}

class test extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(
          flex: 50,
          child: Container(
            color: Colors.red,
            child: Column(
              children: <Widget>[TextField()],
            ),
          ),
        ),
        Expanded(flex: 50, child: Container(color: Colors.yellow))
      ],
    ));
  }
}