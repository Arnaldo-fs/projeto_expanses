import 'package:flutter/material.dart';
import 'package:projeto_expenses/components/transaction_user.dart';

main() => runApp(ExpenseApp());

class ExpenseApp  extends StatelessWidget {
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('Gráfico'),
            ),
          ), 
          TransactionUser(),
        ],
      ),
    );
  }
}
