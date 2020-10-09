import 'package:flutter/material.dart';
import '../model/message.dart';

class DateTimeWithNewBox extends StatelessWidget {
  final int index;
  const DateTimeWithNewBox({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(Message.allChats[index].dateTime),
        if (Message.allChats[index].unreadMessage)
          Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20.0),
                  border:
                      Border.all(width: 1.0, color: Colors.lightBlueAccent)),
              child: Text(
                "New",
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              )),
      ],
    );
  }
}
