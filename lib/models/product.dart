class Product {
  final String id;
  final String name;
  final String description;
  final String imageurl;
  final double amount;
  final double stockamount;
  bool isfavourite;

  Product(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageurl,
      required this.amount,
      required this.stockamount,
      this.isfavourite = false});
}
