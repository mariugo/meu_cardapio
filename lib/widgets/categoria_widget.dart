import 'package:flutter/material.dart';

class CategoriaWidget extends StatelessWidget {
  final String nome;
  final Color cor;

  CategoriaWidget({this.nome, this.cor})

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(nome),
      decoration: BoxDecoration(gradient: LinearGradient(
        colors: [
          cor.withOpacity(0.5),
          cor,
        ],
      ),
      ),
    );
  }
}
