import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:lets_pole/helpers/requests.dart';

class Poll extends ChangeNotifier {
  Client client;
  String token;
  String poll_id;
  String user_id;
  String poll_name;
  bool isadmin;
  String Description;
  List<Question> l;
  Poll(this.poll_id, this.user_id, this.poll_name);

  fetch_status() async {
    var response = await get_status(client, poll_id);
    Map<String, dynamic> pole_status_info = jsonDecode(response.body);
    return pole_status_info['status'];
  }

  Future<String> fetch_name() async {
    var response = await get_pole_name(client, poll_id);
    Map<String, dynamic> pole_name_info = jsonDecode(response.body);
    poll_name = pole_name_info['name'];
    return poll_name;
  }

  Future<Map<String, dynamic>> fetch_data_for_home() async {
    Map<String, dynamic> info;
    info['name'] = poll_name;
    info['description'] = await fetch_description();
    info['status'] = await fetch_status();
    info['isadmin'] = await fetch_isadmin();
  }

  fetch_description() {}

  fetch_isadmin() {}
}

class Question {
  String statement;
  List<String> choices;
}
