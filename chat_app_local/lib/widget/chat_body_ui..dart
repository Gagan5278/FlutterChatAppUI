import 'package:flutter/material.dart';
import 'favourite_contacts.dart';
import 'chat_list_container.dart';

class ChatBodyUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            FavouriteContacts(),
            SizedBox(
              height: 10,
            ),
            ChatListContainer(),
          ],
        ),
      ),
    );
  }
}
