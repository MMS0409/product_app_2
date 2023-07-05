import 'package:default_project/models/products_model.dart';
import 'package:default_project/models/products_screen.dart';
import 'package:flutter/material.dart';

class AboutItemScreen extends StatelessWidget {
  const AboutItemScreen({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final ProductsModel model = Repository.productsList[index];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                shop.add(ProductsModel(
                    title: model.title,
                    price: model.price,
                    description: model.description,
                    imagePath: model.imagePath,
                    info: info));
              },
              icon: const Icon(Icons.save))
        ],
        title: Text(
          model.title,
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              fontFamily: "Poppins",
              color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Image.asset(model.imagePath, height: 300, width: 300)),
              const SizedBox(height: 20),
              const Text(
                "Nomi :",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.indigo),
              ),
              const SizedBox(height: 5),
              Text(
                model.title,
                style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              const SizedBox(height: 10),
              const Text(
                "Batafsil :",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.indigo),
              ),
              const SizedBox(height: 5),
              Text(
                model.info,
                style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

List<ProductsModel> shop = [];
