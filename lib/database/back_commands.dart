import 'package:airflow/models/AirModel.dart';
import 'package:airflow/models/AirModel.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class BackCommands {
  static Future<List<AirModel>> getRequest() async {
    List<AirModel> airList = [];
    airList.clear();
    //Link onde é possível acessar o get formato json do backend, caso mude, mudar a url
    var url = Uri.parse("http://167.172.130.199/dashboard/wind");
    var response = await http.get(url);
    List<dynamic> data = jsonDecode(response.body);

    for (final dado in data) {
      AirModel auxData = AirModel.parse(dado);
      airList.add(auxData);
    }

    return airList;
  }
}
