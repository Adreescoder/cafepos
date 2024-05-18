import 'dart:math';

import 'package:cafepos/models/software.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hover_menu/hover_menu.dart';
import 'package:hover_menu/hover_menu_controller.dart';
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
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(
                    child: Image.asset("assets/logo/Logo.png")),
                Padding(padding: EdgeInsets.only(top: 20),
                child: Text("SkillzUPP Tech",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                Spacer(),
                Row(
                  children: [
                    HoverMenu(
                      title: const Text('TELLOO', style: TextStyle(color: Colors.black)),
                      items: [
                        ListTile(
                          mouseCursor: SystemMouseCursors.click,
                          onTap: () {
                            print("Idrees");
                          },
                          titleAlignment: ListTileTitleAlignment.top,
                          title: Text('Telloo'),
                          subtitle: Text('Telloo App very'
                              ' beast app telloo'),
                        ),
                        ListTile(
                          onTap: () {
                            print("Bilal");
                          },
                          titleAlignment: ListTileTitleAlignment.top,
                          title: const Text('Telloo'),
                          subtitle: Text('Telloo App very'
                              ' beast app telloo'),
                        ),
                        ListTile(
                          titleAlignment: ListTileTitleAlignment.top,
                          title: Text('Telloo'),
                          subtitle: Text('Telloo App very'
                              ' beast app telloo'),
                        ),
                      ],
                      // width: 800,
                    ),
                    HoverMenu(
                      title: Text('SkillzUPP', style: TextStyle(color: Colors.black)),
                      items: [
                        ListTile(
                          titleAlignment: ListTileTitleAlignment.top,
                          title: Text('SkillzUPP POS Software'),
                          subtitle: Text('Pos Software''App'
                        ),
                        ),],
                    ),
                    HoverMenu(
                      title: Text('Doorman', style: TextStyle(color: Colors.black)),
                      items: [
                        ListTile(
                          titleAlignment: ListTileTitleAlignment.top,
                          title: Text('Doorman security System'),
                          subtitle: Text('Security'),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange, // Change color here
                          ),
                          onPressed: (){}, child: Text("Contact Us")),
                    ),
                    SizedBox(width:30)
                  ],
                ),
              ],
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                  width: double.infinity,
                  child: Image.asset('assets/logo/back.jpg',fit: BoxFit.cover,)),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    MySoftwares myPosSoftware = MySoftwares(
                        title: "SkillzUPP POS Software",
                        mainImageUrl:
                            "https://e7.pngegg.com/pngimages/35/1006/png-clipart-computer-programming-software-developer-software-engineering-application-software-software-development-internet-computer-technology-silver-flat-screen-monitor-miscellaneous-computer-thumbnail.png",
                        hours: 230,
                        description:
                            "Any business can use this product to manage their accounts",
                        category: 'pos',
                        version: '1.0',
                        price: 150,
                        isAvailableInStock: true,
                        subtitle: 'Buy now and make your business more efficient');
                    await FirebaseFirestore.instance
                        .collection("MySoftwares")
                        .doc(myPosSoftware.title)
                        .set(myPosSoftware.toJson());
                  },
                  child: const Text("Save My Software Details"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(SkResPosPage());
                      },
                      child: const Text("Skillzupp Restaurant"),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(Doorman_screenPage());
                      },
                      child: const Text("Doorman security System"),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(CompleteMobilePosPage());
                      },
                      child: const Text("Complete Mobile Pos"),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(TellooPage());
                      },
                      child: const Text("Telloo App"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
