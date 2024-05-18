import 'package:cafepos/models/software.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../complete_mobile_pos/view.dart';
import '../doorman_screen/view.dart';
import '../sk_res_pos/view.dart';
import '../telloo/view.dart';
import 'logic.dart';

class First_screenPage extends StatelessWidget {
  final logic = Get.put(First_screenLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ElevatedButton(onPressed: () async {
              MySoftwares myPosSoftware = MySoftwares(title: "SkillzUPP POS Software",
                  mainImageUrl: "https://e7.pngegg.com/pngimages/35/1006/png-clipart-computer-programming-software-developer-software-engineering-application-software-software-development-internet-computer-technology-silver-flat-screen-monitor-miscellaneous-computer-thumbnail.png",
                  hours: 230,
                  description: "Any business can use this product to manage their accounts",
                  category: 'pos',
                  version: '1.0',
                  price: 150,
                  isAvailableInStock: true,
                  subtitle: 'Buy now and make your business more efficient'
              );
              await FirebaseFirestore.instance.collection("MySoftwares").doc(myPosSoftware.title).set(myPosSoftware.toJson());

            }, child: const Text("Save My Software Details"),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(onPressed: () {
                  Get.to(SkResPosPage());
                }, child: const Text("Skillzupp Restaurant"),),
              ),
              const SizedBox(width: 20,),
              Center(
                child: ElevatedButton(onPressed: () {
                  Get.to(Doorman_screenPage());
                }, child: const Text("Doorman security System"),),

              ),
              const SizedBox(width: 20,),
              Center(
                child: ElevatedButton(onPressed: () {
                  Get.to(CompleteMobilePosPage());
                }, child: const Text("Complete Mobile Pos"),),

              ),
              const SizedBox(width: 20,),
              Center(
                child: ElevatedButton(onPressed: () {
                  Get.to(TellooPage());
                }, child: const Text("Telloo App"),),

              ),
            ],
          ),
        ],
      ),
    );
  }
}
