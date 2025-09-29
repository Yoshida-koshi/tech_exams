import 'package:flutter/material.dart';
import 'package:mobile_app/models/recipe.dart';

class RecipeDetailPage extends StatelessWidget {
  const RecipeDetailPage({required this.recipe, super.key});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('レシピ詳細画面'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('レシピ名: ${recipe.name}'),
              const SizedBox(height: 4),
              Text('作り方: ${recipe.howToMake}'),
              const SizedBox(height: 4),
              Text('想定人数: ${recipe.numberOfPeople}人'),
              const SizedBox(height: 4),
              Text('調理時間: ${recipe.cookingTime}分'),
              const SizedBox(height: 4),
              Text('種類: ${recipe.category}'),
              const SizedBox(height: 4),
              Text('カロリー: ${recipe.calories}kcal'),
              const SizedBox(height: 4),
              Text('材料: ${recipe.materials![0].name}'),
              const SizedBox(height: 4),
              Text('材料の使用量: ${recipe.materials![0].usageAmount}'),
              const SizedBox(height: 4),
              Text(
                '${recipe.cookingProcesses![0].orderNumber}番目の手順: ${recipe.cookingProcesses![0].process}',
              ),
              const SizedBox(height: 4),
              Text('栄養素名: ${recipe.nutritions![0].nutrient}'),
              const SizedBox(height: 4),
              Text('栄養素の量: ${recipe.nutritions![0].amount}g'),
            ],
          ),
        ),
      ),
    );
  }
}
