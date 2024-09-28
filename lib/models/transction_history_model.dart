class TransctionHistoryModel {
  final String title, date, price;
  final bool isWithdrawal;

  const TransctionHistoryModel(
      {required this.title,
      required this.date,
      required this.price,
      required this.isWithdrawal});
}
