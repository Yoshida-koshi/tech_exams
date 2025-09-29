import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/models/cooking_process.dart';
import 'package:mobile_app/models/ingredient.dart';
import 'package:mobile_app/models/nutrition.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
abstract class Recipe with _$Recipe {
  const factory Recipe({
    required String id,
    required String name,
    @JsonKey(name: 'how_to_make') String? howToMake,
    @JsonKey(name: 'number_of_people') required int numberOfPeople,
    @JsonKey(name: 'cooking_time') required int cookingTime,
    required String category,
    int? calories,
    List<Ingredient>? materials,
    @JsonKey(name: 'cooking_processes') List<CookingProcess>? cookingProcesses,
    List<Nutrition>? nutritions,
  }) = _Recipe;
  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}