import 'package:flutter/material.dart';
import 'package:minhas_receitas/widgets/categoria_item_widget.dart';

import '../model/dummy_data.dart';

class CategoriasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myAppBar = AppBar(
      title: const Text('Minhas Receitas'),
    );
    return SafeArea(
      child: Scaffold(
        appBar: myAppBar,
        body: GridView(
          padding: const EdgeInsets.all(25),
          children: DUMMY_CATEGORIAS
              .map(
                (cadaCategoria) => CategoriaItemWidget(
                  nome: cadaCategoria.nome,
                  cor: cadaCategoria.cor,
                  id: cadaCategoria.id,
                ),
              )
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}
