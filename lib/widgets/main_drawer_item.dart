import 'package:flutter/material.dart';

class MainDrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function() onTap;
  MainDrawerItem({
    @required this.title,
    @required this.icon,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        this.icon,
        size: 26,
      ),
      title: Text(
        this.title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: this.onTap,
    );
  }
}
