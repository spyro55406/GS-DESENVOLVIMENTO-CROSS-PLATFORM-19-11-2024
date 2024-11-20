import 'package:flutter/material.dart';
import 'package:guilherme_miguel_rm94599/models/eletroposto.dart';
import 'package:guilherme_miguel_rm94599/services/eletroposto_service.dart';

class EletropostoProvider extends ChangeNotifier {
  final eletropostoService = EletropostoService();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Eletroposto> _eletropostos = [];
  List<Eletroposto> get eletropostos => _eletropostos;

  Future<void> listEletroposto() async {
    _isLoading = true;
    notifyListeners();
    _eletropostos = await eletropostoService.getEletroposto();
    _isLoading = false;
    notifyListeners();
  }
}