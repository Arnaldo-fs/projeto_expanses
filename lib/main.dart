import 'package:flutter/material.dart';
import 'package:projeto_expenses/components/transaction_user.dart';

// Ponto de entrada do app Flutter
void main() => runApp(ExpenseApp());

// Widget principal do aplicativo
class ExpenseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(), // Define a tela inicial do app
    );
  }
}

// Tela principal do app
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas Pessoais'), // Título do app
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Espaço reservado para gráfico
          Container(
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('Gráfico'),
            ),
          ),
          // Componente que gerencia transações
          TransactionUser(),
        ],
      ),
    );
  }
}