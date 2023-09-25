import 'package:flutter/material.dart';
import 'package:whatsapp_clone/responsive/responsive_layout.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/screens/mobile_screen_layout.dart';
import 'package:whatsapp_clone/screens/web_screen_layout.dart';


void main() => runApp(MaterialApp(
    home: ResponsiveLayout(mobileScreenLayout: const MobileScreenLayout(), webScreenLayout: const WebScreenLayout()),
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: backGroundColor
    ),
));

class  Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}





