import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:lets_pole/models/Poll.dart';
import 'package:lets_pole/screens/question.dart'; 
import 'package:lets_pole/screens/voterlist.dart'; 
import 'package:provider/provider.dart';
import 'package:lets_pole/screens/homepage.dart';
import 'package:lets_pole/screens/question.dart';
import 'package:lets_pole/screens/voterlist.dart';

class logged_in_screen extends StatefulWidget {
  @override
  final String token;
  logged_in_screen(this.token);
  logged_in_screenstate createState() {
    // TODO: implement createState
    return logged_in_screenstate(token);
  }
}

class logged_in_screenstate extends State<logged_in_screen> {
  List<Widget> list = [
    homepage(),
    question(),
    voterlist(),
  ];
  int tab_index = 0;
  String token;
  logged_in_screenstate(this.token);
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) {
        final parts = token.split('.');
        final payload = parts[1];
        final String decoded = B64urlEncRfc7515.decodeUtf8(payload);
        Map<String, dynamic> token_info = jsonDecode(decoded);
        return Poll.create(
        token_info['poll_id'],
        token_info['username'],
        token_info['is_admin'],
        token
        ); 
      },
      child: Scaffold(
        body: list[tab_index],
        appBar: AppBar(
          title: Text("Lets Poll"),
          actions: <Widget>[
            // PopupMenuButton(
            //    onSelected: ,
            //     itemBuilder: null,
            // )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: tab_index,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer),
              title: Text("Questions"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.poll),
              title: Text("Voter List"),
            ),
          ],
          onTap: (index) {
            setState(() {
              tab_index = index;
            });
          },
        ),
      ),
    );
  }
}

void on_selected() {
  
}