import 'package:flutter/material.dart';
import 'package:my_app/widgets/main_drawer_item.dart';

import '../routes.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: theme.accentColor,
            child: Text(
              'test',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: theme.primaryColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MainDrawerItem(
            icon: Icons.restaurant,
            title: 'Meals',
            onTap: () => Navigator.pushReplacementNamed(context, '/'),
          ),
          MainDrawerItem(
            icon: Icons.settings,
            title: 'Filters',
            onTap: () => Navigator.pushReplacementNamed(context, ERoutes.FilterScreen),
          ),
        ],
      ),
    );
  }
}
