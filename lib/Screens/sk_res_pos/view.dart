import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utilities/constants.dart';
import 'logic.dart';

class SkResPosPage extends StatelessWidget {
  final logic = Get.put(SkResPosLogic());
  var myImages = [
    'assets/CafeWebsite/2.jpg',
    'assets/CafeWebsite/3.jpg',
    'assets/CafeWebsite/4.jpg',
    'assets/CafeWebsite/5.jpg',
    'assets/CafeWebsite/6.jpg',
  ];  /// Image ki List hai ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              elevation: 40.0,
              expandedHeight: 1100.0,
              actions: [about(context),const SizedBox(width: 10,),contactUs(context),SizedBox(width: 10,),
                const SizedBox(width: 10,)
              ],
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Cafe/Hotel/Restaurant Modern POS ",style:
                MyConstants.myGoogleFonts,),
                background: Image.asset(
                  "assets/CafeWebsite/1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
                return  Image.asset(myImages[index],fit: BoxFit.fitHeight,);
              }, childCount: myImages.length),
            ),
          ],
        ),
      ),
    );
  }
}
