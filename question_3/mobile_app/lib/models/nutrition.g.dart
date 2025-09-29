// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Nutrition _$NutritionFromJson(Map<String, dynamic> json) => _Nutrition(
      id: json['id'] as String,
      nutrient: json['nutrient'] as String,
      amount: (json['amount'] as num).toInt(),
    );

Map<String, dynamic> _$NutritionToJson(_Nutrition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nutrient': instance.nutrient,
      'amount': instance.amount,
    };
