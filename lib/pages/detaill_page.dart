
import 'package:bakery_shop_app/pages/widgets/size_widget.dart';
import 'package:bakery_shop_app/pages/widgets/svg_icon.dart';
import 'package:bakery_shop_app/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: h*0.44,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: NetworkImage('https://i.pinimg.com/736x/68/b5/ac/68b5ac6501b143e2f6576e4d57d89a1f.jpg')
              )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height*0.415,
              padding: EdgeInsets.only(left: 20,right: 20,top: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))
              ),
              child: ListView(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: w*0.6,
                          child: Text('Chocolate cake',
                            style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),)),
                      Row(
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('\$',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: AppColor.primaryColor),),
                          Text('19',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,),),
                        ]
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(CupertinoIcons.star_fill,color: AppColor.yellow,size: 20,),
                          SizedBox(width: 5,),
                          Text('4.7',style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Row(
                        children: [
                          svgIcon('flame.svg', AppColor.orange, 20),
                          SizedBox(width: 5,),
                          Text('180 Calories',style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(CupertinoIcons.clock,color: Colors.red,size: 20,),
                          SizedBox(width: 5,),
                          Text('1 day',style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight: FontWeight.w500),)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Text('Details',
                    style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15),),
                  Text('Indulge in the perfect harmony of rich chocolate and fresh strawberries with our Chocolate Strawberry Cake. This decadent dessert features layers of moist, dark chocolate sponge cake, generously filled with a smooth chocolate ganache and fresh strawberry slices. Topped with a velvety chocolate glaze and crowned with whole juicy strawberries, this cake is as beautiful as it is delicious.',
                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.grey),),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20,top: 40,
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.primaryColor
                  ),
                  child: Center(
                    child: Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white70,size: 20,),
                  ),
                ),
              )
          ),
          Positioned(
              top: h*0.37,
              left: w*0.37,
              child: Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppColor.primaryColor
                ),
                child: Row(
                  children: [
                    Icon(Icons.remove,color: Colors.white,size: 15,),
                    SizedBox(width: 13,),
                    Text('1',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                    SizedBox(width: 13,),
                    Icon(Icons.add,color: Colors.white,size: 15,),
                  ],
                ),
              )
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 140,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          children: [
            SizesWidget(),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45,width: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.primaryColor
                  ),
                  child: Center(child: svgIcon('favorite.svg', Colors.white70, 20)),
                ),
                Container(
                  height: 45,
                  width: w*0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: AppColor.primaryColor,width: 1.5)
                  ),
                  child: Center(
                    child: Text('Add to cart',style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.w700,fontSize: 16),),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
