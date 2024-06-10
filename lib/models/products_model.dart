class ProductsModel {
  String imgPath = "";
  String name = "";
  String details = "";
  double price;
  bool isAdded = false;

  ProductsModel({
    required this.imgPath,
    required this.price,
    required this.name,
    required this.details,
    required this.isAdded,
  });
}
