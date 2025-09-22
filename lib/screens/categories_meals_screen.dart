import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final caterogy = ModalRoute.of(context)!.settings.arguments as Category;
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