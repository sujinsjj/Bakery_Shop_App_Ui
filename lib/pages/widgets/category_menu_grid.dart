
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

Widget categoryMenuGrid()
=> Padding(
  padding: const EdgeInsets.only(top: 15, bottom: 15),
  child: MasonryGridView.builder(
      itemCount: _cateMenu.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      crossAxisSpacing: 10,
      mainAxisSpacing: 15,
      itemBuilder: (context,index){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  Image.network(_cateMenu[index]['img']),
                  Positioned.fill(
                      child: Container(
                        color: Colors.black45,
                        child: Center(
                            child: Text(_cateMenu[index]['name'],
                              style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w500),)),
                      )
                  )
                ],
              )
            ),
          ],
        );
      }
  ),
);

List<Map<String,dynamic>> _cateMenu = [
  {
    'name': 'Birthday Cake',
    'img': 'https://i.pinimg.com/736x/6f/bf/d4/6fbfd4d0d4ec8ad103820cb6912fdf47.jpg',
  },
  {
    'name': 'Wedding Cake',
    'img': 'https://i.pinimg.com/736x/fe/59/fd/fe59fd92d850d008772509c8a45f9f92.jpg',
  },
  {
    'name': 'Cup cake',
    'img': 'https://i.pinimg.com/736x/b5/6e/66/b56e6657b7d31702ec595b06d829ab64.jpg',
  },
  {
    'name': 'Pancakes',
    'img': 'https://i.pinimg.com/736x/68/b3/72/68b372381bba2d897fdb19f8d402d78b.jpg',
  },
  {
    'name': 'Christmas Cake',
    'img': 'https://i.pinimg.com/736x/09/94/f0/0994f09ff2f3b58a69c38cf6f243e32b.jpg',
  },
  {
    'name': 'Cakes',
    'img': 'https://i.pinimg.com/736x/d0/26/b2/d026b21a31b041b8139314bc0dd6f830.jpg',
  },
];