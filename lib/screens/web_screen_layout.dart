import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/contacts.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Column(
            children: [
              //Web Profile Bar
              //Web Search Bar
              ContactsList()
            ]
          ),
          //Web Screen
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundimage.jpg'),
                fit: BoxFit.cover
            ),
          )
          )
        ]
      )
    );
  }
}
