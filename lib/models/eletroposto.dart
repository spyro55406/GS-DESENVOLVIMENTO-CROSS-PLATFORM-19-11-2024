import 'dart:convert';

class Eletroposto {
  int id;
  String nome;
  String informacoes;
  String endereco;
  String telefone;
  List<String> conectores;

  Eletroposto(
      {
      required this.id,
      required this.nome,
      required this.informacoes,
      required this.endereco,
      required this.telefone,
      required this.conectores});

  factory Eletroposto.fromRawJson(String str) =>
      Eletroposto.fromJson(json.decode(str));

        String getConector() {
    String retorno = "";
    conectores.forEach((x) => retorno = "$retorno, $x");
    return retorno;
  }

  factory Eletroposto.fromJson(Map<String, dynamic> json) => Eletroposto(
        id : json["id"] ?? "",
        nome: json["nome"] ?? "",
        informacoes: json["informacoes"] ?? "",
        endereco: json["endereco"] ?? "",
        telefone: json["telefone"] ?? "",
        conectores: List<String>.from(json["conectores"].map((x) => x)),
      );


}