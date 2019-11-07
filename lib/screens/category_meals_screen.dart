import 'package:flutter/material.dart';
import 'package:my_app/dummy_data/categories.dart';
import 'package:my_app/models/category.dart';
import 'package:my_app/models/meal.dart';
import 'package:my_app/widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  List<Meal> meals;
  Category category;
  bool _initState = false;

  @override
  void didChangeDependencies() {
    if (this._initState) {
      return;
    }
    this._initState = true;
    this.category = ModalRoute.of(context).settings.arguments as Category;
    this.meals = DUMMY_MEALS
        .where(
          (meal) => meal.categories.contains(this.category.id),
        )
        .toList();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category: ${this.category.title}'),
      ),
      body: ListView.builder(
        itemBuilder: (_, index) => MealItem(
          meal: meals[index],
          removeMeal: (meal) {
            setState(() {
              this.meals.removeWhere((ele) => ele.id == meal.id);
            });
          },
        ),
        itemCount: meals.length,
      ),
    );
  }
}
