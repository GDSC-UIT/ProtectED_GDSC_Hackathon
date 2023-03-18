import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_violence_app/app/core/values/app_colors.dart';
<<<<<<< HEAD
=======
import 'package:school_violence_app/app/modules/sign_in/sign_in_controller.dart';
>>>>>>> caf10c6 (finish chat)

import '../../connect/connect_controller.dart';
import '../screens/chatscreen.dart';

class ChatList extends StatefulWidget {
  ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
<<<<<<< HEAD
  final ConnectController ctrl = Get.find<ConnectController>();
=======
  final SignInController ctrl = Get.find<SignInController>();
>>>>>>> caf10c6 (finish chat)
  var messages = [];
  @override
  void initState() {
    fetchRoom();
    super.initState();
  }

  fetchRoom() async {
    await FirebaseFirestore.instance
        .collection("room")
        .where("roomUser", arrayContains: ctrl.userId.value)
        .snapshots()
        .listen((event) => setState(() {
              messages =
                  event.docs.map((e) => MessRoom.fromJson(e.data())).toList();
            }));
  }

  @override
  Widget build(BuildContext context) {
    return messages.isEmpty
        ? SizedBox()
        : ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            itemCount: messages.length,
            itemBuilder: (BuildContext context, int index) {
<<<<<<< HEAD
=======

>>>>>>> caf10c6 (finish chat)
              return GestureDetector(
                onTap: () {
                  Get.to(() => ChatScreen(
                        initial_text: "",
                        roomUser: messages[index].roomUser,
                        nowUser: ctrl.userId.value,
                      ));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                  color: AppColors.primaryColor,
                  height: 50,
                  child: Center(
                    child: Text(
<<<<<<< HEAD
                      'Chat room',
=======
                      'Chat room ${index}',
>>>>>>> caf10c6 (finish chat)
                      style: TextStyle(color: AppColors.white, fontSize: 18),
                    ),
                  ),
                ),
              );
            });
  }
}

class MessRoom {
  final List roomUser;
  MessRoom({
    required this.roomUser,
  });
  static MessRoom fromJson(Map<String, dynamic> json) =>
      MessRoom(roomUser: json["roomUser"]);
}
