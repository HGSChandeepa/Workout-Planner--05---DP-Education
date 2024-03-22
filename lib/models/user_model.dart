import 'package:app_06_workout_planer/models/exercise_model.dart';
import 'package:app_06_workout_planer/models/equipment_model.dart';

class User {
  final String userId;
  final String fullName;
  final int age;
  final String gender;
  final String address;
  final String description;
  final List<Exercise> exerciseList;
  final List<Equipment> equipmentList;

  User({
    required this.userId,
    required this.fullName,
    required this.age,
    required this.gender,
    required this.address,
    required this.description,
    required this.exerciseList,
    required this.equipmentList,
  });

  // Method to add a new exercise to the user's exercise list
  void addExercise(Exercise exercise) {
    exerciseList.add(exercise);
  }

  // Method to add a new equipment to the user's equipment list
  void addEquipment(Equipment equipment) {
    equipmentList.add(equipment);
  }

  // Method to mark an exercise as completed
  void markExerciseAsCompleted(int exerciseId) {
    final exercise =
        exerciseList.firstWhere((exercise) => exercise.id == exerciseId);
    exercise.completed = true;
  }

  // Method to mark an equipment as handed over
  void markEquipmentAsHandedOver(int equipmentId) {
    final equipment =
        equipmentList.firstWhere((equipment) => equipment.id == equipmentId);
    equipment.handOvered = true;
  }

  // Method to calculate the total number of calories burned by the user
  int calculateTotalCaloriesBurned() {
    int totalCaloriesBurned = 0;
    for (var exercise in exerciseList) {
      totalCaloriesBurned += exercise.noOfMinuites * 5;
    }
    for (var equipment in equipmentList) {
      totalCaloriesBurned += equipment.noOfMinuites * 5;
    }
    return totalCaloriesBurned;
  }

  // Method to calculate the total number of minutes spent by the user
  int calculateTotalMinutesSpent() {
    int totalMinutesSpent = 0;
    for (var exercise in exerciseList) {
      totalMinutesSpent += exercise.noOfMinuites;
    }
    for (var equipment in equipmentList) {
      totalMinutesSpent += equipment.noOfMinuites;
    }
    return totalMinutesSpent;
  }

  // Method to calculate the total number of exercises completed by the user
  int calculateTotalExercisesCompleted() {
    int totalExercisesCompleted = 0;
    for (var exercise in exerciseList) {
      if (exercise.completed) {
        totalExercisesCompleted++;
      }
    }
    return totalExercisesCompleted;
  }

  // Method to calculate the total number of equipment handed over by the user
  int calculateTotalEquipmentHandedOver() {
    int totalEquipmentHandedOver = 0;
    for (var equipment in equipmentList) {
      if (equipment.handOvered) {
        totalEquipmentHandedOver++;
      }
    }
    return totalEquipmentHandedOver;
  }
}
