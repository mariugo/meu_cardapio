import 'package:flutter/material.dart';

import '../model/dummy_data.dart';
import '../widgets/receita_item_widget.dart';

class CategoriasReceitasScreen extends StatelessWidget {
  final String categoriaId;
  final String categoriaNome;

  CategoriasReceitasScreen({
    required this.categoriaId,
    required this.categoriaNome,
  });

  @override
  Widget build(BuildContext context) {
    final categoriasReceitas = DUMMY_RECEITAS
        .where((receita) => receita.categorias.contains(categoriaId))
        .toList();

    final myAppBar = AppBar(
      title: Text(categoriaNome),
    );
    return SafeArea(
      child: Scaffold(
        appBar: myAppBar,
        body: ListView.builder(
          itemBuilder: (ctx, index) => ReceitaItemWidget(
            receitaId: categoriasReceitas[index].id,
            nomeReceita: categoriasReceitas[index].nomeReceita,
            imageUrlReceita: categoriasReceitas[index].imageUrl,
            duracaoReceita: categoriasReceitas[index].duracao,
            complexidadeReceita: categoriasReceitas[index].complexidade,
            custoReceita: categoriasReceitas[index].custo,
          ),
          itemCount: categoriasReceitas.length,
        ),
      ),
    );
  }
}
