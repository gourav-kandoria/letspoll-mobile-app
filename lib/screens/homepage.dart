import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class homepage extends StatefulWidget {
  @override
  homepagestate createState() {
    // TODO: implement createState
    return homepagestate();
  }
}

class homepagestate extends State<homepage> {
  @override
  String token;  
  String payload;
  String decoded;

  void initState() {

  }

  Widget build(BuildContext context) {

    return Scaffold (
            body: Center(child:
              Container(
              child: Center(
                child: Text('''Congrats Logged In
Your Personal token is 
'$decoded' ''')
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