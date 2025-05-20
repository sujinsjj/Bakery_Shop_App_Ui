import 'package:bakery_shop_app/pages/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

import '../../theme/color.dart';

Widget cart()
=> Container(
    height: 35,width: 55,
    padding: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColor.primaryColor
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        svgIcon('basket-plus.svg', Colors.white, 15),
        Text('3',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)
      ],
    )
);