import 'package:dio/dio.dart';
import '../models/produto.dart';

class ProdutoService {
  final Dio dio = Dio(BaseOptions(baseUrl: "https://69dd632484f912a264050800.mockapi.io/api/v1"));

  Future<List<Produto>> getProdutos() async {
    final response = await dio.get("/products");
    return (response.data as List)
        .map((json) => Produto.fromJson(json))
        .toList();
  }

  Future<void> createProduto(Produto produto) async {
    await dio.post("/products", data: produto.toJson());
  }

  Future<void> updateProduto(Produto produto) async {
    await dio.put("/products/${produto.id}", data: produto.toJson());
  }

  Future<void> deleteProduto(String id) async {
    await dio.delete("/products/$id");
  }
}
