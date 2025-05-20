import 'package:bakery_shop_app/pages/widgets/cart.dart';
import 'package:bakery_shop_app/pages/widgets/category.dart';
import 'package:bakery_shop_app/pages/widgets/category_menu_grid.dart';
import 'package:bakery_shop_app/pages/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,),),
        actions: [
          cart(),
          SizedBox(width: 20,),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20, right: 20,),
        children: [
          SizedBox(height: 30,),
          searchBar(),
          SizedBox(height: 25,),
          CategoryWidget(),
          Text('Cake Menu',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
          categoryMenuGrid()
        ],
      ),
    );
  }
}
