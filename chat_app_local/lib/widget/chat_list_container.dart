import 'package:flutter/material.dart';
import 'chat_meessage_cell.dart';

class ChatListContainer extends StatelessWidget {
  const ChatListContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ChatMessageCell(),
      ),
    );
  }
}
