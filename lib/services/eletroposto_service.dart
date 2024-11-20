import 'dart:convert';

import 'package:guilherme_miguel_rm94599/models/eletroposto.dart';
import 'package:http/http.dart' as http;

const baseUrl = "https://eletropostos.azurewebsites.net/api/eletroposto";

class EletropostoService {
  Future<List<Eletroposto>> getEletroposto() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final List list = jsonDecode(response.body);
      final List<Eletroposto> eletropostos =
          list.map((x) => Eletroposto.fromJson(x)).toList();

      return eletropostos;
    }
    throw Exception("Erro");
  }
}