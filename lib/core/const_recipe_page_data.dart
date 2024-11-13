class ConstRecipePageData {
  static const List<String> rda = [
    '2500.0',
    '325.0',
    '105.0',
    '78.0',
    '22.0',
    '2300',
  ];

  static const String nutrition = "Nutrition";
  static const String nutritionSubtitle = '(Percentage of Daily Value)';
  static const String steps = "Steps";
  static const List<String> circularLabel = [
    'Calories',
    'Carbs',
    'Protein',
    'Fats',
    'Sat Fat',
    'Sodium'
   ];
  static String addPercentageOnLabel(String label,double value){
    final String percentage = (value * 100).toStringAsFixed(1);
    return '$label\n$percentage%';
  }
}
