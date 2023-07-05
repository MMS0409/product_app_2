import 'package:default_project/models/products_model.dart';

import '../utils/icons.dart';

const String info="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";


class Repository{
  static List<ProductsModel> productsList = [
    ProductsModel(
        title: "Airpods",
        price: "340000.0\nso'm",
        description: "339600.0 so'm",
        info: info,
        imagePath: AppImages.airpods,
        ),
    ProductsModel(
        title: "Iphone",
        price: "12000000.0\nso'm",
        description: "11999998.0 so'm",
        info: info,
        imagePath: AppImages.iphone),
    ProductsModel(
        title: "Keyboard and Mouse",
        price: "450000.0\nso'm",
        description: "4499799.0 so'm",
        info: info,
        imagePath: AppImages.keyboardMouse),
    ProductsModel(
        title: "MacBook",
        price: "14000000.0\nso'm",
        description: "13999994.0 so'm",
        info: info,
        imagePath: AppImages.mac),
    ProductsModel(
        title: "PC",
        price: "7000000.0\nso'm",
        description: "6999899.0 so'm",
        info: info,
        imagePath: AppImages.pc),
    ProductsModel(
        title: "Speaker",
        price: "500000.0\nso'm",
        description: "499980.0 so'm",
        info: info,
        imagePath: AppImages.speaker),
  ];
}