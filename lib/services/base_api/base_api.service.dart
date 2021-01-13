import 'dart:io';

import 'package:http/http.dart' as http;

class BaseApiService {
  static const int timeOut = 50;

  dynamic get(String endpoint, String params, Map<String, String> map, int TO) {

    var tOut = (TO == null) ? timeOut : TO;
    if (params != null && map != null) {
      return http.get(endpoint + params, headers: map).timeout(Duration(seconds: tOut)).then((getResponse) {
        if(getResponse.statusCode == HttpStatus.ok || getResponse.statusCode == HttpStatus.accepted){

        }
      });
    }
    return http.get(endpoint);
  }
}