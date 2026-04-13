class Produto {
  String? id;
  String nome;
  double preco;

  Produto({this.id, required this.nome, required this.preco});

  factory Produto.fromJson(Map<String, dynamic> json) {
    return Produto(
      id: json['id'],
      nome: json['title'] ?? json['nome'],
      preco: (json['price'] ?? 0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {"title": nome, "price": preco};
  }
}
