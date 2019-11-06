import 'package:flutter/material.dart';
import 'package:my_app/screens/categories_screen.dart';
import 'package:my_app/screens/favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

enum EPageKeys {
  WIDGET,
  TITLE,
}

class _TabsScreenState extends State<TabsScreen> {
  int _index = 0;
  final List<Map<EPageKeys, Object>> _screens = const [
    {EPageKeys.WIDGET: const CategoriesScreen(), EPageKeys.TITLE: 'Categories'},
    {EPageKeys.WIDGET: const FavoriteScreen(), EPageKeys.TITLE: 'Favorites'},
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(this._screens[this._index][EPageKeys]),
      ),
      body: this._screens[this._index][EPageKeys.WIDGET],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: theme.primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: theme.accentColor,
        currentIndex: this._index,
        onTap: (index) {
          this.setState(() {
            this._index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Favorite'),
          ),
        ],
      ),
    );
  }
}
