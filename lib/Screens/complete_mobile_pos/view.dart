import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utilities/constants.dart';
import 'logic.dart';

class CompleteMobilePosPage extends StatelessWidget {
  final logic = Get.put(CompleteMobilePosLogic());

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
              title: Text("Complete Mobile Pos",style:
              MyConstants.myGoogleFonts,),
              background: Image.asset(
                "assets/CompleteMobile_Pos/WhatsApp.jpg",
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SliverList(
            delegate:
            SliverChildBuilderDelegate((BuildContext context, int index) {
              return  Image.asset(logic.completeMobile[index],fit: BoxFit.fitHeight,);
            }, childCount: logic.completeMobile.length),
          ),
        ],
      ),
    );
  }
}
