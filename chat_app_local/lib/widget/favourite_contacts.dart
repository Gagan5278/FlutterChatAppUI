import 'package:flutter/material.dart';
import 'user_profile.dart';

class FavouriteContacts extends StatefulWidget {
  @override
  _FavouriteContactsState createState() => _FavouriteContactsState();
}

class _FavouriteContactsState extends State<FavouriteContacts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Favourite contacts',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 22,
                      fontWeight: FontWeight.w400),
                ),
                IconButton(icon: Icon(Icons.filter), onPressed: () {}),
              ],
            ),
          ),
          UserProfile(),
        ],
      ),
    );
  }
}
