import 'package:flutter/material.dart';

class CategoriasReceitasScreen extends StatelessWidget {
  final String categoriaId;
  final String categoriaNome;

  CategoriasReceitasScreen({
    required this.categoriaId,
    required this.categoriaNome,
  });

  @override
  Widget build(BuildContext context) {
    final myAppBar = AppBar(
      title: Text(categoriaNome),
    );
    return SafeArea(
      child: Scaffold(
        appBar: myAppBar,
        body: Center(
          child: Text('Receitas'),
        ),
      ),
    );
  }
}
