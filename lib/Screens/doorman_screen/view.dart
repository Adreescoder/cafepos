import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utilities/constants.dart';
import 'logic.dart';

class Doorman_screenPage extends StatelessWidget {
  final logic = Get.put(Doorman_screenLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            elevation: 40.0,
            expandedHeight: 700.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Doorman security System",style:
              MyConstants.myGoogleFonts,),
              background: Image.asset(
                "assets/Doorman_image/doorman.png",
               fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SliverList(
            delegate:
            SliverChildBuilderDelegate((BuildContext context, int index) {
              return SizedBox(
                height: 7000,
                child: Image.asset("assets/Doorman_image/Take.png",
                  //fit: BoxFit.fitHeight,
                ),
              );
            }, childCount: 1),
          ),
        ],
      ),
    );
  }
}
