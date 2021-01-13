import 'package:flutter/material.dart';
import '../../main.dart';
import 'routes.dart';

class RouterCdj{
  //generador de ruta
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name){
      ///*****INICIO AGREGAR RUTAS AQUI*******
      //ruta home
      case homeRoute:
        return MaterialPageRoute(builder: (context){
          return MyApp();
        });

    ///*****FINAL AGREGAR RUTAS AQUI*******
      //ruta por default
      default:
        MaterialPageRoute(builder: (context){
          return MyApp();
        });
    }
  }
}