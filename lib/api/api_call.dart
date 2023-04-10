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

 static Future<Map<String, dynamic>>  addDriverApi(
      String path,
      Map<String, dynamic> data, {bool plaintext = false}
      ) async {
    String token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjgxMTQ4OTU2LCJpYXQiOjE2ODEwNjI1NTYsImp0aSI6ImU3Njg2ZDczNDY1ZTRmZWY5N2JiNzJiZmM1MDZlZmNmIiwidXNlcl9pZCI6MiwiZmlyc3RfbmFtZSI6ImFkbWluX3VzZXIiLCJ1cmxfaWQiOiIwQVJLSEcyIn0.NsPPDJS9nvt0q-T6m0F06_NQfVuXXPoOwUoO3TWCvXk ';
    final url = Uri.parse('http://flutter.noviindus.co.in/api/$path/0ARKHG2/');
    final headers= {'Authorization': 'Bearer $token'};

    try {
      final response = await http.post(url, headers: headers, body: json.encode(data));
      if (response.statusCode == 200) {
        // Request successful, handle response data
        final responseData = jsonDecode(response.body);
        if(plaintext){
          return jsonDecode(response.body);
        }else{
          return responseData;
        }
      } else {
        print('Request failed with status: ${response.statusCode}.');
        throw HttpException("");
      }
    } catch (error) {
      print('Request failed with error: $error.');
      var error_message = "An error occurred while processing your request.";
      return {error_message: error.toString()};
    }
  }

  static Future<Map<String, dynamic>> RestPosta(
      String path,
      Map<String, dynamic> data, {
        bool cprint = false,
        bool insidedata = false,
        bool addtodata = false,
        bool plaintext = false,
        bool autolist = false,
      }) async {
    String url = 'http://flutter.noviindus.co.in/api/$path/0ARKHG2/';
    try {
      final response = await http.post(Uri.parse(url),
          body: json.encode(data),
          encoding: Encoding.getByName("utf-8"),
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
          });

      if (response.statusCode == 200) {
        var decoded_response = jsonDecode(response.body);

        if (decoded_response["success"] == false) {
          var error_message = decoded_response["message"];
          throw HttpException(error_message);
        }

        if (insidedata) {
          decoded_response = decoded_response["data"];
        } else if (addtodata) {
          decoded_response = {"data": decoded_response};
        }

        if (plaintext) {
          return jsonDecode(response.body);
        } else {
          return decoded_response;
        }
      } else {
        var error_message = jsonDecode(response.body)["message"];
        throw HttpException(error_message);
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