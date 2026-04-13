import 'package:flutter/material.dart';

class ProdutoListScreen extends StatefulWidget {
  @override
  State<ProdutoListScreen> createState() => _ProdutoListScreenState();
}

class _ProdutoListScreenState extends State<ProdutoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Produtos")),
      body: Center(child: Text("Lista funcionando")),
    );
  }
}
