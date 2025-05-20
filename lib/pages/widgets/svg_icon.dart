import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget svgIcon(String svgIcon, Color color, double h)
=> SvgPicture.asset(
    'assets/icon/$svgIcon',
  colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
  height: h,
);