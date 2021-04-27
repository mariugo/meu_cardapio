import 'package:flutter/material.dart';

import '../model/dummy_data.dart';

class ReceitaDetalhesScreen extends StatelessWidget {
  final String idReceitaEscolhida;

  ReceitaDetalhesScreen({required this.idReceitaEscolhida});

  @override
  Widget build(BuildContext context) {
    final receitaEscolhida = DUMMY_RECEITAS.firstWhere(
        (receitaEscolhida) => receitaEscolhida.id == idReceitaEscolhida);

    final myAppBar = AppBar(
      title: Text(receitaEscolhida.nomeReceita),
    );

    return SafeArea(
        child: Scaffold(
      appBar: myAppBar,
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            child: Image.network(receitaEscolhida.imageUrl, fit: BoxFit.cover),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text('Ingredientes',
                style: Theme.of(context).textTheme.headline6),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            height: 200,
            width: 300,
            child: ListView.builder(
              itemBuilder: (ctx, index) => Card(
                color: Theme.of(context).accentColor,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(receitaEscolhida.ingredientes[index]),
                ),
              ),
              itemCount: receitaEscolhida.ingredientes.length,
            ),
          ),
        ],
      ),
    ));
  }
}
