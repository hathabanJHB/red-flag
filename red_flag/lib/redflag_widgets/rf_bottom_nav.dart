import 'package:flutter/material.dart';

class RFBottomNavBar extends StatelessWidget {
  final selectedIndex;
  final function;
  const RFBottomNavBar({this.selectedIndex, this.function});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on_outlined),
          label: 'location',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.flag_outlined),
          label: 'emergency',
          backgroundColor: Colors.blue,),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outlined),
          label: 'profile',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.white,
      onTap: function,
    );
  }
}
