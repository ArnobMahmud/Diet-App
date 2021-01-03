import 'package:diet_app/models/meals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MealCard extends StatelessWidget {
  final Meal meal;

  const MealCard({Key key, this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
        bottom: 10,
      ),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 4,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Image.asset(meal.imagePath),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(meal.mealTime),
                  Text(meal.name),
                  Text(meal.kiloCaloriesBurnt),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
