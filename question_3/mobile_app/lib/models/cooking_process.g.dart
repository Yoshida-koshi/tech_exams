// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cooking_process.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CookingProcess _$CookingProcessFromJson(Map<String, dynamic> json) =>
    _CookingProcess(
      id: json['id'] as String,
      orderNumber: (json['order_number'] as num).toInt(),
      process: json['process'] as String,
    );

Map<String, dynamic> _$CookingProcessToJson(_CookingProcess instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_number': instance.orderNumber,
      'process': instance.process,
    };
