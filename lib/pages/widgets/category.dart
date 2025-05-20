import 'package:bakery_shop_app/pages/widgets/svg_icon.dart';
import 'package:bakery_shop_app/theme/color.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  final List<Map<String, dynamic>> _categoryItem = [
    {'icon': 'cake.svg', 'name': 'Cake'},
    {'icon': 'pizza.svg', 'name': 'Western'},
    {'icon': 'flame.svg', 'name': 'Local'},
    {'icon': 'drink.svg', 'name': 'Drinks'},
    {'icon': 'ice-cream.svg', 'name': 'Desserts'},
    {'icon': 'snack.svg', 'name': 'Snack'},
    {'icon': 'bread.svg', 'name': 'Breads'},
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Center(
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index){
              final _isSelected = _selectedIndex == index;
              return GestureDetector(
                onTap: (){
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 47, width: 47,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _isSelected ? AppColor.primaryColor:AppColor.lightGrey
                      ),
                      child: Center(
                          child: svgIcon(
                              _categoryItem[index]['icon'],
                              _isSelected ? Colors.white : Colors.grey,
                              23)),
                    ),
                    SizedBox(height: 8,),
                    Text(_categoryItem[index]['name'],
                      style: TextStyle(
                          color: _isSelected ? Colors.black54: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),)
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 12,),
            itemCount: _categoryItem.length),
      ),
    );
  }
}
