import 'models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensivesApp());

class ExpensivesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final _transaction = [
    Transaction(
      id: 't1',
      title: "Novo tênis de corrida",
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: "Conta de luz",
      value: 211.30,
      date: DateTime.now(),
    )
  ];
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
          Column(
            children: _transaction.map((tr) {
              return Card(
                child: Text(tr.title),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
