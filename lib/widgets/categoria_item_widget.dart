import 'package:flutter/material.dart';
import 'package:minhas_receitas/screens/categorias_receitas_screen.dart';

class CategoriaItemWidget extends StatelessWidget {
  final String nome;
  final Color cor;
  final String id;

  CategoriaItemWidget({
    required this.nome,
    required this.cor,
    required this.id,
  });

  void escolherCategoria(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(builder: (_) {
        return CategoriasReceitasScreen(
          categoriaId: id,
          categoriaNome: nome,
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        escolherCategoria(context);
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          nome,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              cor.withOpacity(0.7),
              cor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
