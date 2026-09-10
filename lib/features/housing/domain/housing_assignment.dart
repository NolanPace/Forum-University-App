// FILE: lib/features/housing/domain/housing_assignment.dart

class HousingAssignment {
  final String building;
  final String room;
  final String mealPlan;

  const HousingAssignment({
    required this.building,
    required this.room,
    this.mealPlan = 'Standard',
  });
}