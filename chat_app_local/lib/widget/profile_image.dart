import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final String imageName;
  final double sizeOfPic;
  ProfileImage(this.imageName, this.sizeOfPic);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeOfPic,
      width: sizeOfPic,
      // padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          border: Border.all(
            width: 2.0,
            color: Colors.black87,
          ),
          image: DecorationImage(
              image: AssetImage(
                this.imageName,
              ),
              fit: BoxFit.cover)),
    );
  }
}
