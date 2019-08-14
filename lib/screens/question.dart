import 'package:flutter/material.dart';
import 'package:lets_pole/models/Poll.dart';
import 'package:provider/provider.dart';

class question extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return questionstate();
  }
}
class questionstate extends State<question>{
  Widget build(context) {
  var poll  = Provider.of<Poll>(context, listen: true);
  return Center(child: Text("Inside Questions and my user id is ${poll.user_id}"));
  }
}