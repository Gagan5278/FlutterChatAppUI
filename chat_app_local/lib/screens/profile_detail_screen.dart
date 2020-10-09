import 'package:chat_app_local/widget/profile_image.dart';
import 'package:flutter/material.dart';
import '../model/users.dart';

class ProfileDeailScreen extends StatelessWidget {
  final User selectedUser;
  ProfileDeailScreen(this.selectedUser);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red.withOpacity(0.9),
        title: Text(this.selectedUser.name),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            return Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                height: size.height * 0.30,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(this.selectedUser.bImage),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
              ),
              Positioned(
                  left: size.width * 0.11,
                  bottom: -size.width * 0.25,
                  child: Center(
                    child: Hero(
                      tag: this.selectedUser.id,
                      child: ProfileImage(
                          this.selectedUser.imageName, size.width * 0.75),
                    ),
                  ))
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.12),
            child: Column(
              children: [
                Text(
                  this.selectedUser.name,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Text(
                  this.selectedUser.dob,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
