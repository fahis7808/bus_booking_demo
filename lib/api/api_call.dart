import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;


class Apis{

  static Future restPost(
      String path,
      Map<String, dynamic> data,
      ) async {
    var baseUrl = 'http://flutter.noviindus.co.in/api/';
    final headers = {'Content-Type': 'application/json'};

    try {
      final response = await http.post(Uri.parse(baseUrl + path), headers: headers, body: json.encode(data),);
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        if (kDebugMode) {
          print(responseData);
        }
        if(responseData['status'] == true){
          responseData = responseData['data'];
        }
      } else {
        // Request failed, handle error
        if (kDebugMode) {
          print('Request failed with status: ${response.statusCode}.');
        }
      }
    } catch (error) {
      // Request failed due to an error, handle error
      if (kDebugMode) {
        print('Request failed with error: $error.');
      }
    }}

  static Future <Map<String, dynamic>> fetchData(
      String path
      ) async {
    var url = Uri.parse('http://flutter.noviindus.co.in/api/$path/0ARKHG2/');
    String token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgxMTQ4OTU2LCJpYXQiOjE2ODEwNjI1NTYsImp0aSI6ImU3Njg2ZDczNDY1ZTRmZWY5N2JiNzJiZmM1MDZlZmNmIiwidXNlcl9pZCI6MiwiZmlyc3RfbmFtZSI6ImFkbWluX3VzZXIiLCJ1cmxfaWQiOiIwQVJLSEcyIn0.NsPPDJS9nvt0q-T6m0F06_NQfVuXXPoOwUoO3TWCvXk ';
    var response = await http.get(
      url,
      headers: {'Authorization': 'Bearer $token'},
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

  static Future restPostData(
      String path,
      Map<String, dynamic> data,) async {
    String url = 'http://flutter.noviindus.co.in/api/$path/0ARKHG2/';
    String token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgxMTQ4OTU2LCJpYXQiOjE2ODEwNjI1NTYsImp0aSI6ImU3Njg2ZDczNDY1ZTRmZWY5N2JiNzJiZmM1MDZlZmNmIiwidXNlcl9pZCI6MiwiZmlyc3RfbmFtZSI6ImFkbWluX3VzZXIiLCJ1cmxfaWQiOiIwQVJLSEcyIn0.NsPPDJS9nvt0q-T6m0F06_NQfVuXXPoOwUoO3TWCvXk ';
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    try {
      final response = await http.post(Uri.parse(url),
          body: json.encode(data),
          encoding: Encoding.getByName("utf-8"),
          headers: headers);

      if (response.statusCode == 200) {
        var decodedResponse = jsonDecode(response.body);

        if (decodedResponse["success"] == false) {
          var errorMessage = decodedResponse["message"];
          throw HttpException(errorMessage);
        }

      } else {
        var errorMessage = jsonDecode(response.body)["message"];
        throw HttpException(errorMessage);
      }
    } catch (e) {
      var errorMessage = "An error occurred while processing your request.";
      return {errorMessage: e.toString()};
    }
  }

 static   Future<void> deleteData(String id) async {
   final url = Uri.parse('http://flutter.noviindus.co.in/api/DriverApi/0ARKHG2/');
   String token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgxMTQ4OTU2LCJpYXQiOjE2ODEwNjI1NTYsImp0aSI6ImU3Njg2ZDczNDY1ZTRmZWY5N2JiNzJiZmM1MDZlZmNmIiwidXNlcl9pZCI6MiwiZmlyc3RfbmFtZSI6ImFkbWluX3VzZXIiLCJ1cmxfaWQiOiIwQVJLSEcyIn0.NsPPDJS9nvt0q-T6m0F06_NQfVuXXPoOwUoO3TWCvXk ';
   final headers = {
     'Content-Type': 'application/json',
     'Authorization': 'Bearer $token',
   };
   final body = jsonEncode({'driver_id': id});
   final response = await http.delete(url, headers: headers, body: body);

   if (response.statusCode == 200) {
     if (kDebugMode) {
       print('Data deleted successfully');
     }
   } else {
     throw Exception('Failed to delete data');
   }
 }

}