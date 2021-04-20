import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final myAppBar = AppBar(title: Text('Meu Cardápio'));
    return SafeArea(
      child: Scaffold(
        appBar: myAppBar,
        body: Container(
          child: Center(
            child: Text(
              'Início',
            ),
          ),
        ),
      ),
    );
  }
}
