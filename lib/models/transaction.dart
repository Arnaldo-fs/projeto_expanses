// Modelo de dados que representa uma transação
class Transaction {
  final String id; // Identificador único
  final String title; // Título ou descrição da transação
  final double value; // Valor da transação
  final DateTime date; // Data da transação

  Transaction({
    required this.date,
    required this.title,
    required this.id,
    required this.value,
  });
}
