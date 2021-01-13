import 'dart:convert';

import 'package:flutter/services.dart';

class UtilsCdj {
  //funcion que devuelve el string de strings.json
  static Future<String> loadString(String key)async{
    final jsonFile = await rootBundle.loadString("assets/strings.json");
    Map<String,dynamic> map = json.decode(jsonFile);
    return map[key]??"";
  }
}

class Env {
  //busca el json env
  Future<String> _loadEnv() async {
    return await rootBundle.loadString("assets/util/env.json");
  }

  Future<Map<String, dynamic>> _getEnv() async {
    Map<String, dynamic> env;
    await _loadEnv().then((data) {
      env = json.decode(data);
    });
    return env;
  }

  //devuelve el path de url de la api
  Future<Map<String, dynamic>> getPaths() async {
    Map path;
    await _getEnv().then((data) {
      path = data["backEndAPI"];
    });
    return path;
  }

}