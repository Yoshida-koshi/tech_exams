import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mobile_app/models/recipe.dart';

class ApiRepository {
  static Future<List<Recipe>> fetchRecipeList(int page, int per_page) async {
    final response = await http.get(Uri.parse(
        'http://192.168.10.8:3000/recipes?page=$page&per_page=$per_page'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonArray = json.decode(response.body);
      final recipeList =
          jsonArray.map((recipe) => Recipe.fromJson(recipe)).toList();
      return recipeList;
    } else {
      throw Exception('Failed to load recipe list');
    }
  }

  static Future<void> postRecipe(
    String name,
    String howToMake,
    int numberOfPeople,
    int cookingTime,
    String category,
    int calories,
  ) async {
    final response = await http.post(
      Uri.parse('http://192.168.10.8:3000/recipe'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'name': name,
        'how_to_make': howToMake,
        'number_of_people': numberOfPeople,
        'cooking_time': cookingTime,
        'category': category,
        'calories': calories,
      }),
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to post recipe');
    }
  }

  static Future<void> postMaterial(
    String name,
    String usageAmount,
    String recipeId,
  ) async {
    final response = await http.post(
      Uri.parse('http://192.168.10.8:3000/material'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'name': name,
        'usage_amount': usageAmount,
        'recipe_id': recipeId,
      }),
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to post material');
    }
  }

  static Future<void> postCookingProcess(
    int orderNumber,
    String process,
    String recipeId,
  ) async {
    final response = await http.post(
      Uri.parse('http://192.168.10.8:3000/cooking_process'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'order_number': orderNumber,
        'process': process,
        'recipe_id': recipeId,
      }),
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to post material');
    }
  }

  static Future<void> postNutrition(
    String nutrient,
    int amount,
    String recipeId,
  ) async {
    final response = await http.post(
      Uri.parse('http://192.168.10.8:3000/nutrition'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'nutrient': nutrient,
        'amount': amount,
        'recipe_id': recipeId,
      }),
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to post material');
    }
  }

  static Future<Recipe> fetchRecipeByRecipeName(String recipeName) async {
    final response = await http.get(Uri.parse('http://192.168.10.8:3000/recipe?name=$recipeName'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonMap = json.decode(response.body);
      final recipe = Recipe.fromJson(jsonMap);
      return recipe;
    } else {
      throw Exception('Failed to load recipe by recipe name');
    }
  }
}
