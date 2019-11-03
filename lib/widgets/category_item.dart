import 'package:flutter/material.dart';
import 'package:my_app/models/category.dart';
import 'package:my_app/screens/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem(this.category);

  void Function() _onTapCategory(BuildContext context) {
    return () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => CategoryMealsScreen(
              category: this.category,
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final borderRadius = BorderRadius.circular(15);
    return InkWell(
      onTap: this._onTapCategory(context),
      splashColor: theme.primaryColor,
      borderRadius: borderRadius,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          category.title,
          style: theme.textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(.7),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
