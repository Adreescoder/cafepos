import 'package:cafepos/constants.dart';
import 'package:card_actions/card_action_button.dart';
import 'package:card_actions/card_actions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'logic.dart';

class AboutPage extends StatelessWidget {
  AboutPage({Key? key}) : super(key: key);

  final logic = Get.put(AboutLogic());
  var myStyle = const TextStyle(
      fontSize: 22, fontWeight: FontWeight.normal, color: Colors.white);
  var myStyle2 = const TextStyle(
      fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87);

  Widget myCardActions(context, double width, double height, Widget image, String name, String designation) {
    return CardActions(
      width: width,
      height: height,
      actions: <CardActionButton>[
        // CardActionButton(
        //   icon: Icon(
        //     Icons.person,
        //     color: Colors.white,
        //   ), // Icon
        //   label: name,
        //   onPress: () {print(name);},
        // ), // CardActionButton
        // CardActionButton(
        //   icon: const Icon(
        //     Icons.cases,
        //     color: Colors.white,
        //   ), // Icon
        //   label: designation,
        //   onPress: () {print(designation);},
        // ), // CardActionButton
      ],
      child: image, // here would be your card
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Container(
                padding: const EdgeInsets.only(left: 120),
                alignment: Alignment.centerLeft,
                height: 100,
                width: double.infinity,
                color: Colors.blue.shade600,
                child: Row(
                  children: [
                    InkWell(
                        onTap: (){
                          Get.back();
                        },
                        child: const Icon(Icons.arrow_back_sharp,color: Colors.white,)),
                    SizedBox(width: 10,),
                    Text(
                      "ABOUT US",
                      style: myStyle,
                    ),
                  ],
                ), /// is me Back arrow hai
              ),
            ),
            SizedBox(
              height: 90,
            ),  /// Simple SizedBox hai
            Container(
                padding: EdgeInsets.only(right: 540),
                child: Text(
                  "SkillzUPP Technologies: Your Trusted Partner in Innovation",
                  style: myStyle2,
                )), ///SkillzUPP Technologies: Your Trusted Partner in Innovation hai
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 7),
                      child: Text(
                          "For businesses around the world, navigating the ever-evolving technological\n"
                          " landscape can be a daunting task. At SkillzUPP Technologies,"
                          "we understand that. \n"
                          " That's why we're dedicated to empowering businesses"
                          " with innovative software solutions\n"
                          " that not only meet their needs today, but also propel"
                          " them towards abrighter future.Our \n"
                          "team of passionate and experienced developers crafts"
                          " exceptional applications that tackle \n"
                          "real-world challenges. We don't just build software;"
                          " we forge partnerships. We take the time\n"
                          " to understand your unique business goals and develop"
                          "solutions that seamlessly integrate with \n"
                          "your existing infrastructure.At SkillzUPP Technologies, success isn't just about delivering a product.\n"
                          " It's about building long-term relationships built on trust and collaboration. We believe in the power \n"
                          "of ongoing support and work closely with our clients to ensure their applications continue to deliver value\n"
                          " as their business growsWhether you're a small startup or a well-established enterprise, SkillzUPP Technologies\n"
                          " is here to be your trusted technology partner. We're passionate about helping businesses of all sizes leverage\n"
                          " the power of technology to achieve their goals and reach new heights"),
                    ),
                  ],
                ),/// Description hai Cafa pos ka
                Row(
                  children: [
                    SizedBox(
                      height: 300,
                      width: 300,
                      child: Image.asset("assets/CafeWebsite/Logo.png"),
                    )
                  ],
                ),

                /// Skillzupp ka Logo hai
              ],
            ),
            Divider(),
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  "Our Staff",
                  style: myStyle2,
                )),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Animate(
                    delay: Duration(seconds: 2) ,
                    autoPlay: true,
                    effects:const [FadeEffect(), ScaleEffect()],
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Card(
                        elevation: 20,
                        child: Column(
                          children: [
                            Image.asset("assets/CafeWebsite/Sir.jpeg"),
                            const Text('Bilal Saeed'),
                            const Text("Full Stack Engineer - CEO"),
                          ],
                        ),
                      ),
                    ),
                  ), /// sir Animate Image wala
                  Animate(
                    delay: Duration(seconds: 2) ,
                    autoPlay: true,
                    effects:const [FadeEffect(), ScaleEffect()],
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Card(
                        elevation: 20,
                        child: Column(
                          children: [
                            SizedBox(
                                width: 200,
                                height: 200,
                                child: Image.asset("assets/CafeWebsite/adrees.jpeg")),
                            Text('M.Adrees Nazir'),
                            Text("Backend Developer"),
                          ],
                        ),
                      ),
                    ),
                  ), /// Adrrees Animate Image wala
                  Animate(
                    delay: Duration(seconds: 2) ,
                    autoPlay: true,
                    effects:const [FadeEffect(), ScaleEffect()],
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Card(
                        elevation: 20,
                        child: Column(
                          children: [
                            SizedBox(
                                width: 200,
                                height: 200,
                                child: Image.asset("assets/CafeWebsite/abdullah.jpeg")),
                            Text('M.Abdullah'),
                            Text("Graphic Designer"),
                          ],
                        ),
                      ),
                    ),
                  ), /// Abdullah Animate Image wala
                  Animate(
                    delay: Duration(seconds: 2) ,
                    autoPlay: true,
                    effects:const [FadeEffect(), ScaleEffect()],
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Card(
                        elevation: 20,
                        child: Column(
                          children: [
                            Image.asset("assets/CafeWebsite/saim.jpeg"),
                            Text("Saim Khalid"),
                            Text("Full Stack Engineer - CEO"),
                          ],
                        ),
                      ),
                    ),
                  ), /// Saim Animate Image wala
                ],
              ),
            ),  /// ye ik SizedBox hai is me Animated image hai is ListView lagahai
            SizedBox(height: 80,),
            Container(

            )
            // MouseRegion(
            //   child: Container(
            //     child: ourProduct(context),
            //   ),
            //   cursor: SystemMouseCursors.move,
            //   onHover: (event)=>{
            //     ourProduct(context),
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
