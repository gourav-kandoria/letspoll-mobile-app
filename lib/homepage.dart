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
  Widget build(BuildContext context) {
    var token;
    var store = FlutterSecureStorage();
    var result = store.read(key: 'letspole');
    result.then((value) {
      setState(() {token = value;});
    }
    );
    return Scaffold (
            body: Center(child:
              Container(
              child: Center(
                child: Text('''Congrats Logged In
Your Personal token is 
'${token}' ''')
            )
            ))
           );
  }
}