import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/Colors.dart';
import 'package:whatsapp_clone/pages/calls.dart';
import 'package:whatsapp_clone/pages/updates.dart';
import 'package:whatsapp_clone/widgets/contacts.dart';
import 'package:whatsapp_camera/whatsapp_camera.dart';



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
          )
          ),
          centerTitle: false,
          actions: [
            IconButton(onPressed: () async {
              List<File>? res = await Navigator.push(
                context, MaterialPageRoute(
                builder: (context) => const WhatsappCamera(),
              ),
              );
              if(res !=null) files.value = res;
            }, icon: const Icon(Icons.camera_alt), color: Colors.grey,),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search), color: Colors.grey,),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert), color: Colors.grey,)
          ],
          bottom: TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.bold
            ),
            tabs: [
            Tab(text: 'Chats'),
            Tab(text: 'Updates'),
            Tab(text: 'Calls')
          ],),
        ),
        body: TabBarView(
            children: [
              ContactsList(),
              UpdatesPage(),
              CallsPage()
            ],
        ),
        floatingActionButton:Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 60, 5, 1),
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