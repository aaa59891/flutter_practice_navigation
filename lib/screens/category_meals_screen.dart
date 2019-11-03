import 'package:flutter/material.dart';
import 'package:my_app/models/category.dart';

class CategoryMealsScreen extends StatelessWidget {
  final Category category;
  CategoryMealsScreen({
    @required this.category,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category: ${this.category.title}'),
      ),
      body: Center(
        child: Text('Category Meals'),
      ),
    );
  }
}
