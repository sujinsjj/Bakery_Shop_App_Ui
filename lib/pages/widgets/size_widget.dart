import 'package:bakery_shop_app/pages/widgets/svg_icon.dart';
import 'package:bakery_shop_app/theme/color.dart';
import 'package:flutter/material.dart';

class SizesWidget extends StatefulWidget {
  const SizesWidget({super.key});

  @override
  State<SizesWidget> createState() => _SizesWidgetState();
}

class _SizesWidgetState extends State<SizesWidget> {
  final List<Map<String, dynamic>> _sizes = [
    {'size': '16 cm'},
    {'size': '20 cm'},
    {'size': '22 cm'},
    {'size': '25 cm'},
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: Center(
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              final _isSelected = _selectedIndex == index;
              return GestureDetector(
                onTap: (){
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: Container(
                  height: 30, width: MediaQuery.of(context).size.width*0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: _isSelected ? AppColor.primaryColor:Colors.white,
                      border: Border.all(color: _isSelected ?AppColor.primaryColor:Colors.black54)
                  ),
                  child: Center(
                      child: Text(_sizes[index]['size'],
                        style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color:_isSelected ?  Colors.white70:Colors.black54),)),
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 9,),
            itemCount: _sizes.length),
      ),
    );
  }
}
