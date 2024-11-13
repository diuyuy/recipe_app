import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_data.freezed.dart';
part 'food_data.g.dart';

@freezed
class FoodData with _$FoodData {
  const factory FoodData({
    required String name,
    required String calories,
    required String carbohydratesG,
    required String proteinG,
    required String fatG,
    required String saturatedFatG,
    required String sodiumMg,
  }) = _FoodData;

  factory FoodData.fromJson(Map<String, dynamic> json) =>
      _$FoodDataFromJson(json);
}
