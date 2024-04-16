class SchoolMeal {
  final List<String> breakfast;
  final List<String> lunch;
  final List<String> dinner;

  SchoolMeal({
    //Constructor
    required this.breakfast,
    required this.lunch,
    required this.dinner,
  });

  factory SchoolMeal.fromJson(Map<String, dynamic> json) => SchoolMeal(
        breakfast: List<String>.from(json['breakfast']),
        lunch: List<String>.from(json['lunch']),
        dinner: List<String>.from(json['dinner']),
      );
}
