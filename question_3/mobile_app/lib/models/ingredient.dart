import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient.freezed.dart';
part 'ingredient.g.dart';

@freezed
abstract class Ingredient with _$Ingredient {
  const factory Ingredient({
    required String id,
    required String name,
    @JsonKey(name: 'usage_amount') required String usageAmount,
  }) = _Ingredient;
  factory Ingredient.fromJson(Map<String, dynamic> json) => _$IngredientFromJson(json);
}