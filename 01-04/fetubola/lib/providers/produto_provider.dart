import 'package:flutter/material.dart';
import '../models/produto.dart';
import '../services/produto_service.dart';

class ProdutoProvider extends ChangeNotifier {
  final ProdutoService service = ProdutoService();

  List<Produto> produtos = [];
  bool loading = false;
  String filtro = "";

  List<Produto> get produtosFiltrados {
    if (filtro.isEmpty) return produtos;

    return produtos
        .where((p) => p.nome.toLowerCase().contains(filtro.toLowerCase()))
        .toList();
  }

  void setFiltro(String value) {
    filtro = value;
    notifyListeners();
  }

  Future<void> fetchProdutos() async {
    loading = true;
    notifyListeners();

    produtos = await service.getProdutos();

    loading = false;
    notifyListeners();
  }

  Future<void> addProduto(Produto produto) async {
    await service.createProduto(produto);
    await fetchProdutos();
  }

  Future<void> updateProduto(Produto produto) async {
    await service.updateProduto(produto);
    await fetchProdutos();
  }

  Future<void> deleteProduto(String id) async {
    await service.deleteProduto(id);
    await fetchProdutos();
  }
}
