import 'package:flutter/material.dart';

import '../model/receita.dart';
import '../screens/receita_detalhes_screen.dart';

class ReceitaItemWidget extends StatelessWidget {
  final String receitaId;
  final String nomeReceita;
  final String imageUrlReceita;
  final int duracaoReceita;
  final Complexidade complexidadeReceita;
  final Custo custoReceita;

  ReceitaItemWidget({
    required this.receitaId,
    required this.nomeReceita,
    required this.imageUrlReceita,
    required this.duracaoReceita,
    required this.complexidadeReceita,
    required this.custoReceita,
  });

  String get complexidadeReceitaTexto {
    switch (complexidadeReceita) {
      case Complexidade.Simples:
        return 'Simples';
      case Complexidade.Media:
        return 'Média';
      case Complexidade.Dificil:
        return 'Difícil';
      default:
        return 'Desconhecida';
    }
  }

  String get custoReceitaTexto {
    switch (custoReceita) {
      case Custo.Barata:
        return 'Barata';
      case Custo.Razoavel:
        return 'Razoável';
      case Custo.Cara:
        return 'Cara';
      default:
        return 'Desconhecido';
    }
  }

  void receitaEscolhida(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) => ReceitaDetalhesScreen(
          idReceitaEscolhida: receitaId,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        receitaEscolhida(context);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrlReceita,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      nomeReceita,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.schedule,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '$duracaoReceita min',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.work,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        complexidadeReceitaTexto,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.attach_money,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        custoReceitaTexto,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
