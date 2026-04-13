import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/produto_provider.dart';
import '../../models/produto.dart';
import 'package:go_router/go_router.dart';

class ProdutoFormScreen extends StatefulWidget {
  final Produto? produto;

  const ProdutoFormScreen({super.key, this.produto});

  @override
  State<ProdutoFormScreen> createState() => _ProdutoFormScreenState();
}

class _ProdutoFormScreenState extends State<ProdutoFormScreen> {
  final nomeController = TextEditingController();
  final precoController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.produto != null) {
      nomeController.text = widget.produto!.nome;
      precoController.text = widget.produto!.preco.toString();
    }
  }

  void salvar() {
    final provider = Provider.of<ProdutoProvider>(context, listen: false);

    final produto = Produto(
      id: widget.produto?.id,
      nome: nomeController.text,
      preco: double.parse(precoController.text),
    );

    if (widget.produto == null) {
      provider.addProduto(produto);
    } else {
      provider.updateProduto(produto);
    }

    context.go('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.produto == null ? "Novo Produto" : "Editar Produto"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nomeController,
              decoration: InputDecoration(labelText: "Nome"),
            ),
            TextField(
              controller: precoController,
              decoration: InputDecoration(labelText: "Preço"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: salvar, child: Text("Salvar")),
          ],
        ),
      ),
    );
  }
}
