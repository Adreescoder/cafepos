import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utilities/constants.dart';
import 'logic.dart';


class TellooPage extends StatelessWidget {
  final logic = Get.put(TellooLogic());

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
              title: Text("Telloo App",style:
              MyConstants.myGoogleFonts,),
              background: Image.asset(
                "assets/Telloo/img3.jpg",
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SliverList(
            delegate:
            SliverChildBuilderDelegate((BuildContext context, int index) {
              return  Image.asset(logic.tellooImage[index],fit: BoxFit.fitHeight,);
            }, childCount: logic.tellooImage.length),
          ),
        ],
      ),
    );
  }
}
