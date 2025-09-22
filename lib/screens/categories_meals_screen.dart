import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {

  final Category caterogy;

  const CategoriesMealsScreen(this.caterogy);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(caterogy.title),
      ),
      body: Center(
        child: Text('Receitas por Catergoria ${caterogy.id}'),
      ),
    );
  }
}