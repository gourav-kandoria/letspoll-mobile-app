import 'package:flutter/material.dart';
import 'package:lets_pole/models/Poll.dart';
import 'package:provider/provider.dart';
class homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return homepagestate();
  }
}
class homepagestate extends State<homepage>{
  Widget build(context) {
  var poll  = Provider.of<Poll>(context, listen: true);
  return Center(child: Text("I am inside Homepage and my poll id is ${poll.poll_id}"));
  }
}