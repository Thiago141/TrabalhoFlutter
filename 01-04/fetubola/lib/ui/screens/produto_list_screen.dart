import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../../providers/produto_provider.dart';

class ProdutoListScreen extends StatelessWidget {
  const ProdutoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // O 'watch' faz a tela se redesenhar automaticamente quando o Provider avisa (notifyListeners)
    final provider = context.watch<ProdutoProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Produtos"),
      ),
      // 1. Verifica se está carregando os dados da API
      body: provider.loading
          ? const Center(child: CircularProgressIndicator()) 
          
          // 2. Verifica se a lista veio vazia da API
          : provider.produtosFiltrados.isEmpty
              ? const Center(child: Text("Nenhum produto encontrado."))
              
              // 3. Monta a lista real com os dados
              : ListView.builder(
                  itemCount: provider.produtosFiltrados.length,
                  itemBuilder: (context, index) {
                    final produto = provider.produtosFiltrados[index];
                    
                    return ListTile(
                      title: Text(produto.nome),
                      // Se você tiver outros campos (ex: preço), pode colocar no subtitle
                      // subtitle: Text("ID: ${produto.id}"),
                      
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Botão de Editar (UPDATE)
                          IconButton(
                            icon: const Icon(Icons.edit, color: Colors.blue),
                            onPressed: () {
                              // Navega para o form passando o produto inteiro para ser editado
                              context.push('/form', extra: produto);
                            },
                          ),
                          // Botão de Excluir (DELETE)
                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              provider.deleteProduto(produto.id!);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
                
      // Botão Flutuante para Adicionar (CREATE)
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // Navega para o form sem passar nada (indicando que é um novo cadastro)
          context.push('/form');
        },
      ),
    );
  }
}