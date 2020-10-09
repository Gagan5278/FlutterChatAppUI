import 'package:flutter/material.dart';
import '../widget/chat_filter.dart';
import '../widget/chat_body_ui..dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Chats'),
        backgroundColor: Colors.red.withOpacity(0.9),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.white,
          )
        ],
        leading: IconButton(
            icon: Icon(
              Icons.dashboard,
              color: Colors.white,
            ),
            onPressed: () {}),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          ChatMessageFilter(),
          SizedBox(
            height: 10,
          ),
          ChatBodyUI(),
        ],
      ),
      backgroundColor: Colors.red,
    );
  }
}
