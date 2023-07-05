import 'package:default_project/ui/about/about_screen.dart';
import 'package:default_project/ui/profile/profile_screen.dart';
import 'package:default_project/ui/tabs_box.dart';
import 'package:flutter/material.dart';

import 'favorite/favorite_screen.dart';
import 'korzin/korzin_screen.dart';

class AppRoutes{

  static const String initial = '/';
  static const String tabBox = '/tab_box';
  static  const String favoriteScreen = '/favorite_screen';
  static const String korzinScreen = '/korzin_screen';
  static const String profileScreen = '/profile_screen';
  static const String saveItemUser = '/screen_field';
  static const String aboutScreen = '/about_screen';
}


class AppRoutesName{
  static Route generateRoute(RouteSettings settings){

    switch (settings.name){
      case AppRoutes.initial:
        return MaterialPageRoute(builder: (context)=> const TabBox());
      case AppRoutes.favoriteScreen:
        return MaterialPageRoute(builder: (context)=> FavoriteScreen(index: settings.arguments as int,));
      case AppRoutes.korzinScreen:
        return MaterialPageRoute(builder: (context) => const KorzinScreen());
      case AppRoutes.profileScreen:
        return MaterialPageRoute(builder: (context)=> const ProfileScreen());
      case AppRoutes.aboutScreen:
        return MaterialPageRoute(builder: (context)=>  AboutItemScreen(index: settings.arguments as int,));
      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Center(child:
            Text("Route not available"),),
          );
        });


    }

  }
}