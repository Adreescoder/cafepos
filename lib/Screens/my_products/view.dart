import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MyProductsPage extends StatelessWidget {
  MyProductsPage({Key? key}) : super(key: key);

  final logic = Get.put(MyProductsLogic());
  var myProducts = [
    'assets/ourProducts/1.jpeg',
    'assets/ourProducts/2.jpeg',
    'assets/ourProducts/4.jpeg',
    'assets/ourProducts/5.jpeg',
    'assets/ourProducts/6.jpeg',
    'assets/ourProducts/7.jpeg',
  ];
  var myContainerSize = 380.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: myContainerSize,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: myProducts.length,
          itemBuilder: (context,i){
            return Animate(
              effects: [
                ScaleEffect(),FadeEffect()
              ],
              child: Container(
                constraints:   BoxConstraints(
                  maxWidth: myContainerSize, // Set your desired maximum width
                  maxHeight: myContainerSize, // Set your desired maximum height
                ),

                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    color: Colors.black,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Image.asset(myProducts[i],fit: BoxFit.fill,),
              ),
            );
          },
        ),
      ),
    );
  }
}
