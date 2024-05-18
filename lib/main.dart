import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'about/view.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cafe pos Website",
      home: AboutPage(),
    );
  }
}

class Skillzupp extends StatefulWidget {
  const Skillzupp({super.key});

  @override
  State<Skillzupp> createState() => _SkillzuppState();
}

class _SkillzuppState extends State<Skillzupp> {
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
              actions: [contactUs(context),about(context)],
              flexibleSpace: FlexibleSpaceBar(
                title: Text("Cafe POS"),
                background: Image.asset(
                  "assets/CafeWebsite/1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return SizedBox(
                    height: 800,
                    width: 800,
                    child: Image.asset(myImages[index],fit: BoxFit.fitHeight,));
              }, childCount: 5),
            ),
          ],
        ),
      ),
    );
  }


}



