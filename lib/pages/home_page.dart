import 'package:bakery_shop_app/pages/widgets/cart.dart';
import 'package:bakery_shop_app/pages/widgets/category.dart';
import 'package:bakery_shop_app/pages/widgets/popular_grid.dart';
import 'package:bakery_shop_app/pages/widgets/search_bar.dart';
import 'package:bakery_shop_app/pages/widgets/svg_icon.dart';
import 'package:bakery_shop_app/theme/color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset('assets/icon/menu.png',color: AppColor.primaryColor,),
        ),
        leadingWidth: 50,
        actions: [
          Container(
            height: 35,width: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.primaryColor
            ),
            child: Center(
              child: svgIcon('bell.svg', Colors.white, 17),
            ),
          ),
          SizedBox(width: 15,),
          cart(),
          SizedBox(width: 20,),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20, right: 20,top: 10),
        children: [
          Text('What would \nyou like to eat?', 
            style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
          SizedBox(height: 20,),
          searchBar(),
          SizedBox(height: 25,),
          CategoryWidget(),
          Text('Over Popular Items',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
          popularGrid(),
        ],
      ),
    );
  }
}
