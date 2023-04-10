import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;


class Apis{

  static Future RestPost(
      String path,
      Map<String, dynamic> data,
      ) async {
    var base_url = 'http://flutter.noviindus.co.in/api/';
    final headers = {'Content-Type': 'application/json'};

    try {
      final response = await http.post(Uri.parse(base_url + path), headers: headers, body: json.encode(data),);
      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        print(responseData);
        if(responseData['status'] == true){
          responseData = responseData['data'];
        }
      } else {
        // Request failed, handle error
        print('Request failed with status: ${response.statusCode}.');
      }
    } catch (error) {
      // Request failed due to an error, handle error
      print('Request failed with error: $error.');
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

  static Future RestPosta(
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
        var decoded_response = jsonDecode(response.body);

        if (decoded_response["success"] == false) {
          var errorMessage = decoded_response["message"];
          throw HttpException(errorMessage);
        }

      } else {
        var errorMessage = jsonDecode(response.body)["message"];
        throw HttpException(errorMessage);
      }
    } catch (e) {
      var error_message = "An error occurred while processing your request.";
      return {error_message: e.toString()};
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
     print('Data deleted successfully');
   } else {
     throw Exception('Failed to delete data');
   }
 }

}