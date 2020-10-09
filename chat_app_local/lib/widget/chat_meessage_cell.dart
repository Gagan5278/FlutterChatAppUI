import 'package:chat_app_local/screens/chat_detail_screen.dart';
import 'package:flutter/material.dart';
import '../model/message.dart';
import 'profile_image.dart';
import 'chat_message_withuser.dart';
import 'datetime_newmaessage.dart';
import '../model/users.dart';

class ChatMessageCell extends StatelessWidget {
  const ChatMessageCell({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void moveToDetailFor(User user) {
      Navigator.of(context).push(MaterialPageRoute(builder: (cntx) {
        return ChatDetailScreen(user);
      }));
    }

    return Padding(
      padding: const EdgeInsets.only(top: 0, right: 5),
      child: ListView.builder(
        itemBuilder: (cntx, index) {
          return GestureDetector(
            onTap: () {
              return moveToDetailFor(Message.allChats[index].user);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Message.allChats[index].unreadMessage
                    ? Colors.pinkAccent.withAlpha(30)
                    : Colors.grey.withAlpha(30),
                borderRadius: BorderRadius.only(
                  topLeft:
                      index == 0 ? Radius.circular(30) : Radius.circular(0),
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              margin: EdgeInsets.all(5),
              child: Row(
                children: [
                  ProfileImage(Message.allChats[index].user.imageName, 90),
                  ChatMessageWithUser(
                    index: index,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DateTimeWithNewBox(
                    index: index,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: Message.allChats.length,
      ),
    );
  }
}
