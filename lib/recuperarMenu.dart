import 'dart:convert';
import 'package:http/http.dart' as http;

class recuperarMenu{
  static Future<String> getApi(String valor) async{
    String url = 'https://foodish-api.herokuapp.com/api/';
    final response = await http.get(Uri.parse(url));
    return response.body.toString();
  }

  static Future<Map<String, dynamic>> getDatos(String valor) async{
    String res = '';
    res = await getApi('');
    Map<String, dynamic> data = jsonDecode(res);
    return data;
  }
}