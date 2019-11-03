import 'package:flutter/material.dart';
import 'package:my_app/models/category.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Category;
    return Scaffold(
      appBar: AppBar(
        title: Text('Category: ${routeArgs.title}'),
      ),
      body: Center(
        child: Text('Category Meals'),
      ),
    );
  }
}
