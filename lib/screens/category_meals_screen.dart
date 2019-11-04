import 'package:flutter/material.dart';
import 'package:my_app/dummy_data/categories.dart';
import 'package:my_app/models/category.dart';
import 'package:my_app/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Category;
    final meals = DUMMY_MEALS
        .where(
          (meal) => meal.categories.contains(routeArgs.id),
        )
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Category: ${routeArgs.title}'),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) => MealItem(meals[index]),
        itemCount: meals.length,
      ),
    );
  }
}
