class Product {
  final String name;
  final String? image;
  final double? price;
  final double? quantity;
  final String? description;

  Product({
    required this.name,
    this.image,
    this.price,
    this.quantity,
    this.description,
  });
}
