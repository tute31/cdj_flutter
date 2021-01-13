import 'package:pruebas/config/routes/api_endpoint.dart';
import 'package:pruebas/services/base_api/base_api.service.dart';
import 'dart:io';

class TeamsRest extends BaseApiService {

  //Servicio que devuelve el listado de equipos por Categoria con sus puntos y posiciones
  Future<dynamic> getListTeams() async {
    String url = ApiEndpoint.URL_CDJ_CLOOUD + "/positions/getteams?tournament=${"SJ5qKyig4"}}";
    final response = await get(url, null, null, null);

    if(response.statusCode == HttpStatus.ok || response.statusCode == HttpStatus.accepted){
      print(response);
    }

  }


  String tournamentID = "MENORESA";



  //retorna el ID de Toreno por Categoria
  String getIDTournament(String tournamentID) {
    switch(tournamentID) {
      case 'MENORESA':
        return "SJ5qKyig4";

      case 'MENORESB':
        return "H1c2EXtuN";

      case 'MENORESC':
        return "ryUfvw5d4";

      case 'MENORESD':
        return "HyTmuskKN";

      case 'MAYORESA':
        return "S1qisN13B";

      case 'MAYORESB':
        return "HygyV4wd4";

      case 'FEMENINOA':
        return "SkHoDkoe4";

      case 'FEMENINOB':
        return "SyNUNVFO4";

      default:
        return "";

    }
  }

}



