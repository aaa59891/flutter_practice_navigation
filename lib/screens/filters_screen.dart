import 'package:flutter/material.dart';
import 'package:my_app/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      drawer: MainDrawer(),
      body: Text('Filter'),
    );
  }
}
