import 'package:flutter/material.dart';
import 'package:meals/components/meal_item.dart';
import 'package:meals/data/dummy_data.dart';
import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final caterogy = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryMeals = DUMMY_MEALS.where((meal){
      return meal.categories.contains(caterogy.id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(caterogy.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: categoryMeals.length,
          itemBuilder: (ctx, index){
          return MealItem(categoryMeals[index]);
        }),
      ),
    );
  }
}