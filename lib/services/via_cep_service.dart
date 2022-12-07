import 'package:consulta_cep/constants.dart';
import 'package:http/http.dart' as http;
import 'package:consulta_cep/models/result_cep.dart';

class ViaCepService {
  static Future<ResultCep> fetchCep({required String cep}) async {
    var url = Uri.parse(ApiConstants.baseUrl + cep + ApiConstants.format);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return ResultCep.fromJson(response.body);
    } else {
      throw Exception('Requisição inválida!');
    }
  }
}
