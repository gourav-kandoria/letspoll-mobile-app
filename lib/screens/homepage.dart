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

class homepagestate extends State<homepage> {
  Widget build(context) {
    var poll = Provider.of<Poll>(context, listen: true);
    // return Center(child: Text("I am inside Homepage and my poll id is ${poll.poll_id}"));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(30, 30, 40, 30),
        child: Text(
          "${poll.poll_name}",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              // fontStyle: FontStyle.italic,
              fontSize: 24),
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 40, 40),
        child: Container(
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text("Descriptio goes here..."),
        ),
      ),
      //   Card(
      //        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      //        elevation: 0,
      //        child: Padding(
      //         padding: EdgeInsets.all(30),
      //         child:
      //         Text(
      //             "Description goes here///",
      //             style: TextStyle(fontStyle: FontStyle.italic),
      //        )),
      // )
    ]);
  }
}
