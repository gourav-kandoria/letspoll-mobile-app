import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lets_pole/file.dart';

class homepage extends StatefulWidget {
  @override
  String token;
  homepage(this.token);
  homepagestate createState() {
    // TODO: implement createState
    return homepagestate(token);
  }
}

class homepagestate extends State<homepage> {
  @override
  String token;  
  String payload;
  String decoded;
  homepagestate(this.token);

  Widget build(BuildContext context) {

    return Scaffold (
            body: Center(child:
              Container(
              child: Center(
                child: Text('''Congrats Logged In
Your Personal token is 
'$token' ''')
            )
            )),
            bottomNavigationBar: BottomNavigationBar(
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
            ),
           );
  }
  }