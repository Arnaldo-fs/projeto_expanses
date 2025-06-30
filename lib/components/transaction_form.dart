import 'package:flutter/material.dart';

// Widget que representa o formulário de transações
class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController(); // Controla o campo título
  final valueController = TextEditingController(); // Controla o campo valor

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            // Campo para digitar título
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Título'),
            ),
            // Campo para digitar valor
            TextField(
              controller: valueController,
              decoration: InputDecoration(labelText: 'Valor (R\$)'),
            ),
            // Botão para enviar a nova transação
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text('Nova Transação'),
                  style: TextButton.styleFrom(foregroundColor: Colors.purple),
                  onPressed: () {
                    final title = titleController.text;
                    final value = double.tryParse(valueController.text) ?? 0.0;
                    onSubmit(title, value); // Chama função recebida por parâmetro
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}