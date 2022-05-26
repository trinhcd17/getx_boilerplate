import 'dart:convert';
import 'package:getx_boilerplate/data/models/my_model.dart';
import 'package:http/http.dart' as http;

class MyApiClient {
  final baseUrl = Uri.parse('https://jsonplaceholder.typicode.com/posts/');
  final http.Client httpClient;
  MyApiClient({required this.httpClient});

  getAll() async {
    try {
      var response = await httpClient.get(baseUrl);
      if (response.statusCode == 200) {
        Iterable jsonResponse = json.decode(response.body);
        List<MyModel> listMyModel =
            jsonResponse.map((model) => MyModel.fromJson(model)).toList();
        return listMyModel;
      } else {
        print('erro');
      }
    } catch (_) {}
  }

  getId(id) async {
    try {
      var response = await httpClient.get(baseUrl);
      if (response.statusCode == 200) {
        //Map<String, dynamic> jsonResponse = json.decode(response.body);
      } else {
        print('erro -get');
      }
    } catch (_) {}
  }
}
