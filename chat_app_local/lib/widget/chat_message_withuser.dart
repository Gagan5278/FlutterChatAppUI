import 'package:flutter/material.dart';
import '../model/message.dart';

class ChatMessageWithUser extends StatelessWidget {
  final int index;
  const ChatMessageWithUser({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Message.allChats[index].user.name,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black54,
            ),
          ),
          Text(
            Message.allChats[index].message,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
