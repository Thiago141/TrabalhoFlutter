import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

import 'providers/produto_provider.dart';
import 'ui/screens/produto_list_screen.dart';
import 'ui/screens/produto_form_screen.dart';
import 'models/produto.dart';

void main() {
  runApp(MyApp());
}

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => ProdutoListScreen()),
    GoRoute(
      path: '/form',
      builder: (context, state) {
        final produto = state.extra as Produto?;
        return ProdutoFormScreen(produto: produto);
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProdutoProvider(),
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
