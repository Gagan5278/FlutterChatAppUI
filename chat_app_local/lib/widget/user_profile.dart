import 'package:chat_app_local/screens/profile_detail_screen.dart';
import 'package:flutter/material.dart';
import '../model/users.dart';
import 'profile_image.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (cntx, index) {
          return GestureDetector(
            onTap: () {
              return Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return ProfileDeailScreen(User.userslist[index]);
              }));
            },
            child: Hero(
              tag: User.userslist[index].id,
              child: Material(
                type: MaterialType.transparency,
                child: Column(
                  children: [
                    ProfileImage(User.userslist[index].imageName, 90),
                    Center(
                      child: Text(User.userslist[index].name.split(" ").first),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: User.userslist.length,
      ),
    );
  }
}
