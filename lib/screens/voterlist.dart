import 'package:flutter/material.dart';
import 'package:lets_pole/models/Poll.dart';
import 'package:provider/provider.dart';

class voterlist extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return voterliststate();
  }
}
class voterliststate extends State<voterlist>{
  Widget build(context) {
  var poll  = Provider.of<Poll>(context, listen: true);
  return Center(child: Text("Voterlist and my name is ${poll.poll_name}"));
  }
}