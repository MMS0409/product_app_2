import 'package:default_project/local/storage_repository.dart';
import 'package:default_project/ui/app_routes.dart';
import 'package:default_project/utils/icons.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../models/products_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  int count = StorageRepository.getInt('count');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Products",
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: Repository.productsList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.62),
              itemBuilder: (context, index) => ZoomTapAnimation(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.aboutScreen,
                      arguments: index);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            LikeButton(
                              onTap: (isLiked) async {
                                StorageRepository.putInt('count', count);
                                like.add(Repository.productsList[index].title);
                                StorageRepository.putList('name',like);
                                // for(var i in like){
                                //   if(i==)
                                // }
                                if(isLiked){
                                  like.remove(Repository.productsList[index].title);
                                  StorageRepository.putList('name',like);
                                  return false;
                                }
                                return true;
                              },
                              likeBuilder: (bool isLiked) {
                                return Icon(
                                  Icons.favorite,
                                  color:
                                      isLiked ? Colors.redAccent : Colors.grey,
                                );
                              },
                            )
                          ],
                        ),
                        Image.asset(Repository.productsList[index].imagePath,
                            height: 100, width: 150),
                        const SizedBox(
                          height: 20,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  text: "Nomi - ",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                  children: [
                                    TextSpan(
                                      text:
                                          Repository.productsList[index].title,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.orange),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(
                                    text: "Narxi - ",
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                    children: [
                                      TextSpan(
                                        text: Repository
                                            .productsList[index].price,
                                        style: const TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.red),
                                      ),
                                    ]),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: Repository
                                      .productsList[index].description,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.orange),
                                ),
                              ),
                            ]),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<String>like= StorageRepository.getList('name');

List<String> images = [
  AppImages.airpods,
  AppImages.iphone,
  AppImages.keyboardMouse,
  AppImages.pc,
  AppImages.mac,
  AppImages.speaker
];
