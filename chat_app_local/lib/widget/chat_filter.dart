import 'package:flutter/material.dart';

class ChatMessageFilter extends StatefulWidget {
  @override
  _ChatMessageFilterState createState() => _ChatMessageFilterState();
}

class _ChatMessageFilterState extends State<ChatMessageFilter> {
  List<String> arrayOfFilter = ['Messages', 'Online', 'Groups', 'Recent'];
  int selectedIndex = 0;
  void updateState(int index, BuildContext context) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (cntx, index) {
          return GestureDetector(
            onTap: () => updateState(index, context),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                arrayOfFilter[index],
                style: TextStyle(
                    color: selectedIndex == index ? Colors.white : Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
        itemCount: arrayOfFilter.length,
      ),
    );
  }
}
