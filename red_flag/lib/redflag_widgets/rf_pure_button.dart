import 'package:flutter/material.dart';

class RFPureButton extends StatelessWidget {
 final child;
  RFPureButton({this.child});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.transparent,
      splashColor: Colors.black26,
      onPressed: () {},
      child: child
    );
  }
}
