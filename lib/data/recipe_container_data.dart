import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_container_data.freezed.dart';

@freezed
class RecipeContainerData with _$RecipeContainerData {
  const factory RecipeContainerData({
    required String img,
    required String name,
  }) = _RecipeContainerData;
}
