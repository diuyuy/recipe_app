// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodDataImpl _$$FoodDataImplFromJson(Map<String, dynamic> json) =>
    _$FoodDataImpl(
      name: json['name'] as String,
      calories: json['calories'] as String,
      carbohydratesG: json['carbohydratesG'] as String,
      proteinG: json['proteinG'] as String,
      fatG: json['fatG'] as String,
      saturatedFatG: json['saturatedFatG'] as String,
      sodiumMg: json['sodiumMg'] as String,
    );

Map<String, dynamic> _$$FoodDataImplToJson(_$FoodDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'calories': instance.calories,
      'carbohydratesG': instance.carbohydratesG,
      'proteinG': instance.proteinG,
      'fatG': instance.fatG,
      'saturatedFatG': instance.saturatedFatG,
      'sodiumMg': instance.sodiumMg,
    };
