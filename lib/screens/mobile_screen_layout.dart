import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/Colors.dart';
import 'package:whatsapp_clone/widgets/contacts.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: appBarColor
          ),
          backgroundColor: appBarColor,
          elevation: 0,
          toolbarHeight: 40,
          title: const Text('WhatsApp', style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold
          )),
          centerTitle: false,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt), color: Colors.grey,),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search), color: Colors.grey,),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert), color: Colors.grey,)
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold
            ),
            tabs: [
            Tab(text: 'Chats'),
            Tab(text: 'Updates'),
            Tab(text: 'Calls')
          ],),
        ),
        body: const ContactsList(),
        floatingActionButton:Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 60, 30, 50),
          child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: tabColor,
              child: const Icon(Icons.comment, color: Colors.white),
          ),
        ),
      ),
    );
  }
}