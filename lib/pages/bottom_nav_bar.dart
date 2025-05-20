import 'package:bakery_shop_app/pages/categories_page.dart';
import 'package:bakery_shop_app/pages/home_page.dart';
import 'package:bakery_shop_app/pages/widgets/svg_icon.dart';
import 'package:bakery_shop_app/theme/color.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> _pages = [
    const HomePage(),
    const Text('Favorite'),
    const CategoriesPage(),
    const Text('profile'),
  ];
  int _selectedIndex = 0;

  void _onTappedItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: AppColor.primaryColor,
        shadowColor: Colors.black12,
        padding: const EdgeInsets.symmetric(horizontal: 0),
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _bottomAppBarItem('home.svg', 0),
            _bottomAppBarItem('favorite.svg', 1),
            _bottomAppBarItem('widget.svg', 2),
            _bottomAppBarItem('profile.svg', 3)
          ],
        ),
      ),
    );
  }

  Widget _bottomAppBarItem(String icon, int index){
    return  InkWell(
      onTap: (){
        _onTappedItem(index);
      },
      child: SizedBox(
        height: 60,
        width: MediaQuery.of(context).size.width*0.25,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              svgIcon(icon, Colors.white, 21),
              SizedBox(height: 5,),
              Container(
                height: 5, width: 5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (_selectedIndex == index) ? Colors.white : Colors.transparent
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
