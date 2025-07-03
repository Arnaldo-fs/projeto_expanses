import 'package:flutter/material.dart';

// Widget que representa o formulário de transações
class TransactionForm extends StatefulWidget {
  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final titleController = TextEditingController(); 
  final valueController = TextEditingController(); 
  
  _submitForm() {
    final title = titleController.text;
    final value = double.tryParse(valueController.text) ?? 0.0;
    if (title.isEmpty || value <= 0) {
      return;
    }

    widget.onSubmit(title, value); // Chama função recebida por parâmetro
  }

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
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (value) => _submitForm(),
              decoration: InputDecoration(labelText: 'Valor (R\$)'),
            ),
            // Botão para enviar a nova transação
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text('Nova Transação'),
                  style: TextButton.styleFrom(foregroundColor: Colors.purple),
                  onPressed: _submitForm, 
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
