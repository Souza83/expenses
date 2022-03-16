import 'package:flutter/material.dart';

main() => runApp(ExpensivesApp());

class ExpensivesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround, //Espaço entre objetos
        crossAxisAlignment: CrossAxisAlignment.stretch, //Estica os objetos
        children: <Widget>[
          Container(
            width: double.infinity, //Recebe a largura da total da tela
            child: Card(
              color: Colors.blue,
              child: Text('Gráfico'),
              elevation: 5,
            ),
          ),
          Card(
            child: Text('Lista Transações'),
          ),
        ],
      ),
    );
  }
}
