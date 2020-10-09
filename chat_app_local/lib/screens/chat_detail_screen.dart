import 'package:chat_app_local/model/users.dart';
import 'package:chat_app_local/widget/profile_image.dart';
import 'package:flutter/material.dart';
import '../model/message.dart';

class ChatDetailScreen extends StatefulWidget {
  final User selectedUser;
  ChatDetailScreen(this.selectedUser);

  @override
  _ChatDetailScreenState createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  @override
  Widget build(BuildContext context) {
    double sizeofTextFor(String text) {
      final textStyle = TextStyle(
        color: Colors.black87,
      );
      final Size size = (TextPainter(
              text: TextSpan(text: text, style: textStyle),
              maxLines: 10,
              textScaleFactor: MediaQuery.of(context).textScaleFactor,
              textDirection: TextDirection.ltr)
            ..layout())
          .size;
      final seventyPercnt = MediaQuery.of(context).size.width * 0.70;
      if (size.width > seventyPercnt) {
        return seventyPercnt - 12;
      }
      return size.width + 12;
    }

    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red.withOpacity(0.9),
        title: Text(this.widget.selectedUser.name),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            return Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          ProfileImage(widget.selectedUser.imageName, 90),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView.builder(
                itemBuilder: (cntx, index) {
                  final messagee = Message.messages[index].message;
                  final isSelf = Message.messages[index].user ==
                      Message.allChats[index].user;
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: isSelf
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(6),
                        padding: EdgeInsets.all(6),
                        width: sizeofTextFor(messagee),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: isSelf
                                ? Radius.circular(12)
                                : Radius.circular(0),
                            bottomRight: isSelf
                                ? Radius.circular(0)
                                : Radius.circular(12),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: !isSelf
                              ? CrossAxisAlignment.start
                              : CrossAxisAlignment.end,
                          children: [
                            Text(
                              messagee,
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              Message.allChats[index].dateTime,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      if (!isSelf)
                        IconButton(
                            icon: Icon(
                              Message.messages[index].isLiked
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Message.messages[index].isLiked
                                  ? Colors.red
                                  : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                if (Message.messages[index].isLiked) {
                                  Message.messages[index].isLiked = false;
                                } else {
                                  Message.messages[index].isLiked = true;
                                }
                              });
                            })
                    ],
                  );
                },
                itemCount: Message.messages.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
