import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/mobile_chat.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: info.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MobileChatScreen(index: index)));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 1.0),
                        child: ListTile(
                          title: Text(info[index]['name'].toString(),style: const TextStyle(fontSize: 18)),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(info[index]['message'].toString(),style: const TextStyle(fontSize: 15)
                            ),
                          ),
                          leading: InkWell(
                            onTap:() {
                            },
                            child: CircleAvatar(
                                 backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
                              radius: 30,
                            ),
                          ),
                          trailing: Text(info[index]['time'].toString(), style: const TextStyle(fontSize: 13, color: Colors.grey)
                        ),
                        ),
                      ),
                    ),
                    const Divider(
                        color: dividerColor, indent: 85
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
