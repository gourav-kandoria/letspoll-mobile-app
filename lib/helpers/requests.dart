import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';

const server_url = "http://192.168.43.232:8000";

Future<Response> create_user(
    Client client, String poll_id, String user_name, String password) async {
  var data = {
    'poll_id': "${poll_id}",
    'username': user_name,
    'password': password,
  };
  print(json.encode(data));
  Response response = await client.post('${server_url}/api/auth/create_user/',
      body: json.encode(data),
      headers: {
        "content-type": "application/json",
        "Accept": "Application/json"
      });
  return response;
}

Future<Response> login_user(
    Client client, String username, String password, String poll_id) async {
  Response response = await client.post('${server_url}/api/auth/login/',
      body: jsonEncode({
        'username': username,
        'password': password,
        'poll_id': poll_id,
      }),
      headers: {
        "content-type": "application/json",
        "Accept": "Application/json"
      });
  return response;
}
