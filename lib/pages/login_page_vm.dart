import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'home.dart';


class LoginPageVM extends ChangeNotifier{
  String? userName;
  String? passWord;
  bool isSuccess = false;

  Future<void> getLogin(BuildContext context) async {
    final url = Uri.parse('http://flutter.noviindus.co.in/api/LoginApi');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({'username': userName, 'password': passWord});

    try {
      final response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200) {
        // Request successful, handle response data
        final responseData = jsonDecode(response.body);
        print(responseData);
        if(responseData["status"] == true){
          notifyListeners();
          userName = "";
          passWord = "";
          Navigator.push(context, MaterialPageRoute(builder: (ctx) => const HomePage()));
        }
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (error) {
      print('Request failed with error: $error.');
    }
  }

}


