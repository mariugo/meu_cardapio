enum Complexidade {
  Simples,
  Media,
  Dificil,
}

enum Custo {
  Barata,
  Razoavel,
  Cara,
}

class Receita {
  final String id;
  final List<String> categorias;
  final String nomeReceita;
  final String imageUrl;
  final List<String> ingredientes;
  final List<String> passos;
  final int duracao;
  final Complexidade complexidade;
  final Custo custo;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegana;
  final bool isVegetariana;

  const Receita({
    required this.id,
    required this.categorias,
    required this.nomeReceita,
    required this.imageUrl,
    required this.ingredientes,
    required this.passos,
    required this.duracao,
    required this.complexidade,
    required this.custo,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegana,
    required this.isVegetariana,
  });
}
