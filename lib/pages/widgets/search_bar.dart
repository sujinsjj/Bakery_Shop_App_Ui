import 'package:bakery_shop_app/pages/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

import '../../theme/color.dart';

Widget searchBar(){
  return Container(
    height: 45,
    padding: EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
        color: AppColor.lightGrey,
        borderRadius: BorderRadius.circular(10)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.search_rounded,color: AppColor.primaryColor,size: 18,),
            SizedBox(width: 10,),
            Text('Search here', style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w500),)
          ],
        ),
        svgIcon('filter.svg', AppColor.primaryColor, 24)
      ],
    ),
  );
}