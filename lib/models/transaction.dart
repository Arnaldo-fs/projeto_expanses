
class Transaction {
  final String id;
  final String title;
  final double value;
  final DateTime date;


Transaction({
  required this.date,
  required this.title,
  required this.id,
  required this.value
});
}