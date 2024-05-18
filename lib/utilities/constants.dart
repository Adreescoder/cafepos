import 'package:cafepos/my_products/view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about/view.dart';

String whatsappURL =
    "https://wa.me/923058431046/?text=I%20want%20to%20buy%20Cafe%20POS%20from%20your%20website,%20please%20give%20me%20more%20info";

var myStyle = const TextStyle(color:Colors.white);
class MyConstants{
  static var myGoogleFonts =  GoogleFonts.merienda(textStyle: const TextStyle
    (color:
  Colors.black));
}

var myButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.blue
);
Widget contactUs(BuildContext context) {
  return ElevatedButton(
    style: myButtonStyle,
      onPressed: () async {
        await launchUrl(Uri.parse(whatsappURL));
      },
      child:   Text('Buy Now', style: myStyle,));
}

Widget about(BuildContext context) {
  return ElevatedButton(
    style: myButtonStyle,
      onPressed: () async {
        print("About");
        Get.to(  AboutPage(),transition: Transition.fade,
            duration: const Duration(seconds: 1));
      },
      child:   Text('About',style: myStyle,));
}

void onEnter(PointerEvent details) {
print("is on enter");
}

void onExit(PointerEvent details) {
print("Is on exit");
}
Widget ourProduct(BuildContext context) {
  return MouseRegion(
    onEnter: onEnter,
    onExit: onExit,
    child: ElevatedButton(
      style: myButtonStyle,
        onPressed: () async {
          // print("About");
          Get.to( MyProductsPage(),transition: Transition.fade,
              duration: const Duration(seconds: 1));
        },
        child:   Text('OurProduct',style: myStyle,)),
  );
}