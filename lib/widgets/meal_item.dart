import 'package:flutter/material.dart';
import 'package:my_app/constants/styles.dart';
import 'package:my_app/models/meal.dart';
import 'package:my_app/routes.dart';

class MealItem extends StatelessWidget {
  final Meal meal;
  MealItem(this.meal);

  String get complexity {
    switch (this.meal.complexity) {
      case EComplexity.Simple:
        return 'Simple';
      case EComplexity.Challenging:
        return 'Challenging';
      case EComplexity.Hard:
        return 'Hard';
      default:
        return 'Unknown';
    }
  }

  String get affordability {
    switch (this.meal.affordability) {
      case EAffordability.Affordable:
        return 'Affordable';
      case EAffordability.Luxurious:
        return 'Luxurious';
      case EAffordability.Pricey:
        return 'Pricey';
      default:
        return 'Unknown';
    }
  }

  void Function() _onTap(BuildContext context) {
    return () {
      Navigator.pushNamed(
        context,
        ERoutes.MealDetailScreen,
        arguments: this.meal,
      );
    };
  }

  @override
  Widget build(BuildContext context) {
    final imageBorderRadius = Radius.circular(CardStyle.borderRadius);
    return InkWell(
      onTap: this._onTap(context),
      child: Card(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: imageBorderRadius,
                    topRight: imageBorderRadius,
                  ),
                  child: Image.network(
                    this.meal.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 20,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      this.meal.title,
                      style: TextStyle(color: Colors.white, fontSize: 24),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.schedule),
                      Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Text('${this.meal.duration} min'),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.work),
                      Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Text('${this.complexity}'),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.attach_money),
                      Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Text('${this.affordability}'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
