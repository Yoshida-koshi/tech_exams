import 'package:flutter/material.dart';
import 'package:mobile_app/clients/api_repository.dart';
import 'package:mobile_app/models/recipe.dart';
import 'package:mobile_app/pages/recipe_detail_page.dart';

class RecipeListPage extends StatefulWidget {
  const RecipeListPage({super.key});

  @override
  State<RecipeListPage> createState() => _RecipeListPageState();
}

class _RecipeListPageState extends State<RecipeListPage> {
  List<Recipe> recipeList = [];

  Future<void> _initializer() async {
    final getRecipeList = await ApiRepository.fetchRecipeList(1, 20);
    setState(() {
      recipeList = getRecipeList;
    });
  }

  @override
  void initState() {
    super.initState();
    _initializer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('レシピ一覧画面'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: recipeList.length,
        itemBuilder: (BuildContext context, int index) {
          final recipe = recipeList[index];
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => RecipeDetailPage(recipe: recipe),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 2, color: Colors.black),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('レシピ名: ${recipe.name}'),
                      Text('作り方: ${recipe.howToMake}'),
                      Text('想定人数: ${recipe.numberOfPeople}人'),
                      Text('調理時間: ${recipe.cookingTime}分'),
                      Text('種類: ${recipe.category}'),
                      Text('カロリー: ${recipe.calories}kcal'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
            ],
          );
        },
      ),
    );
  }
}
