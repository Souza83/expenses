//Cria classe Transação
class Transaction {
  final String id;
  final String title;
  final double value;
  final DateTime date;

  //Cria construtor com o par de {} refere a atributos nomeados
  Transaction({
    required this.id,
    required this.title,
    required this.value,
    required this.date,
  });
}
