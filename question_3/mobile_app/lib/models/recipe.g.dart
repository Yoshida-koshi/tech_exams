// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Recipe _$RecipeFromJson(Map<String, dynamic> json) => _Recipe(
      id: json['id'] as String,
      name: json['name'] as String,
      howToMake: json['how_to_make'] as String?,
      numberOfPeople: (json['number_of_people'] as num).toInt(),
      cookingTime: (json['cooking_time'] as num).toInt(),
      category: json['category'] as String,
      calories: (json['calories'] as num?)?.toInt(),
      materials: (json['materials'] as List<dynamic>?)
          ?.map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      cookingProcesses: (json['cooking_processes'] as List<dynamic>?)
          ?.map((e) => CookingProcess.fromJson(e as Map<String, dynamic>))
          .toList(),
      nutritions: (json['nutritions'] as List<dynamic>?)
          ?.map((e) => Nutrition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecipeToJson(_Recipe instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'how_to_make': instance.howToMake,
      'number_of_people': instance.numberOfPeople,
      'cooking_time': instance.cookingTime,
      'category': instance.category,
      'calories': instance.calories,
      'materials': instance.materials,
      'cooking_processes': instance.cookingProcesses,
      'nutritions': instance.nutritions,
    };
