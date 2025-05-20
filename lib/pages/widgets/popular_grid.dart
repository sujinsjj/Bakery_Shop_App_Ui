import 'package:bakery_shop_app/pages/detaill_page.dart';
import 'package:bakery_shop_app/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

Widget popularGrid()
=> Padding(
    padding: const EdgeInsets.only(top: 15, bottom: 15),
  child: MasonryGridView.builder(
      itemCount: popular.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      crossAxisSpacing: 10,
      mainAxisSpacing: 15,
      itemBuilder: (context,index){
        return GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailPage()),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(popular[index]['img']),
                  ),
                  Positioned(
                    bottom: 15,right: 15,
                      child: Container(
                        height: 25,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColor.primaryColor
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(CupertinoIcons.star_fill,color: CupertinoColors.white,size: 12,),
                            SizedBox(width: 5,),
                            Text(popular[index]['rate'],style: TextStyle(color: CupertinoColors.white, fontSize: 13,fontWeight: FontWeight.w500),)
                          ],
                        ),
                      )
                  )
                ],
              ),
              const SizedBox(height: 5,),
              Text(popular[index]['name'],style: TextStyle(fontWeight: FontWeight.w700),),
              const SizedBox(height: 8,),
              Text(popular[index]['category'], style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w500),)
            ],
          ),
        );
      }
  ),
);

List<Map<String,dynamic>> popular = [
  {
    'id': '1',
    'name': 'Chocolate Caramel Cream Roll ',
    'img': 'https://i.pinimg.com/736x/ad/25/3e/ad253e62ad85846a572b75a09670a3d0.jpg',
    'category': 'Cakes',
    'rate': '4.5'
  },
  {
    'id': '2',
    'name': 'Raspberry Panna Cotta',
    'img': 'https://i.pinimg.com/736x/4a/b7/5b/4ab75b21500a1b7d06065c223db87a6c.jpg',
    'category': 'Desserts',
    'rate': '4.5'
  },
  {
    'id': '3',
    'name': 'Pistachio Ice-Cream',
    'img': 'https://i.pinimg.com/736x/47/3f/c9/473fc901e74a1034bae5145966640b43.jpg',
    'category': 'Desserts',
    'rate': '4.5'
  },
  {
    'id': '4',
    'name': 'Strawberries & Cream Frappuccino',
    'img': 'https://i.pinimg.com/736x/f8/15/b1/f815b139bf2a952fb8a8e8bca24b9bd4.jpg',
    'category': 'Drinks',
    'rate': '4.5'
  },
  {
    'id': '5',
    'name': 'Chocolate Strawberry Cake',
    'img': 'https://i.pinimg.com/564x/fa/36/98/fa3698631c01d4db3061ad459533a73e.jpg',
    'category': 'Cakes',
    'rate': '4.7'
  },
  {
    'id': '6',
    'name': 'Bananas Foster',
    'img': 'https://i.pinimg.com/736x/d0/26/b2/d026b21a31b041b8139314bc0dd6f830.jpg',
    'category': 'Desserts',
    'rate': '4.6'
  },
  {
    'id': '7',
    'name': 'Chocolate Strawberry Cake',
    'img': 'https://i.pinimg.com/736x/db/cf/e8/dbcfe8fc0888740fb884c860f799c3cd.jpg',
    'category': 'Cakes',
    'rate': '4.5'
  },
  {
    'id': '8',
    'name': 'Chocolate Strawberry Cake',
    'img': 'https://i.pinimg.com/564x/fa/36/98/fa3698631c01d4db3061ad459533a73e.jpg',
    'category': 'Cakes',
    'rate': '4.5'
  },
  {
    'id': '9',
    'name': 'Chocolate Strawberry Cake',
    'img': 'https://i.pinimg.com/564x/fa/36/98/fa3698631c01d4db3061ad459533a73e.jpg',
    'category': 'Cakes',
    'rate': '4.5'
  },
];