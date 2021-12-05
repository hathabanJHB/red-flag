// ignore: file_names
import 'package:flutter/material.dart';

class PictureContainer extends StatelessWidget {
  // final image;

  // PictureContainer(required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: 120.0,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/red-flag.jpg'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
