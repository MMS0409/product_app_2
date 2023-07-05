class ProductsModel {
  final String title;
  final String imagePath;
  final String price;
  final String description;
  final String info;

  ProductsModel(
      {required this.title,
      required this.price,
      required this.description,
      required this.imagePath,
      required this.info});
}
