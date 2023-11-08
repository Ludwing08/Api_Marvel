import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiMarvel{
  final String apiKey='7ddbb8cc33a05d94e5775b23f565dfd7';
  final String url = 'gateway.marvel.com:443';
  String u ='https://gateway.marvel.com:443/v1/public/characters?apikey=7ddbb8cc33a05d94e5775b23f565dfd7';
  // privat   89f0d2551e7395e73a7c5cee86f988bfd0816f72
  //public 7ddbb8cc33a05d94e5775b23f565dfd7
  //ts 1
  //1
  //89f0d2551e7395e73a7c5cee86f988bfd0816f72
  //7ddbb8cc33a05d94e5775b23f565dfd7
  //hash abd1f0d3315229fd0d4327a3f71b2a3d
  Future getCharacters() async{
    final response = await http.get(Uri.https(url, '/v1/public/characters',  {'ts':'1', 'apikey': '7ddbb8cc33a05d94e5775b23f565dfd7', 'hash':'abd1f0d3315229fd0d4327a3f71b2a3d'}));        
    final body = jsonDecode(response.body);  
    return body;
  }
}