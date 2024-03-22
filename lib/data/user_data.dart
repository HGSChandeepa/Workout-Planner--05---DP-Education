import 'package:app_06_workout_planer/models/equipment_model.dart';
import 'package:app_06_workout_planer/models/exercise_model.dart';
import 'package:app_06_workout_planer/models/user_model.dart';

User user = User(
  userId: "123456",
  fullName: "John Doe",
  age: 30,
  gender: "Male",
  address: "123 Main St, City, Country",
  description: "Fitness enthusiast",
  exerciseList: [
    Exercise(
      exerciseName: "Push-ups",
      exerciseImageUrl: "assets/images/exercises/cobra.png",
      noOfMinuites: 15,
      id: 0,
      completed: false,
    ),
    Exercise(
      exerciseName: "Squats",
      exerciseImageUrl: "assets/images/exercises/downward-facing.png",
      noOfMinuites: 20,
      id: 1,
      completed: false,
    ),
  ],
  equipmentList: [
    Equipment(
      id: 1,
      equipmentName: "Resistance Bands",
      equipmentDescription: "Elastic bands used for resistance exercises.",
      equipmentImageUrl: "assets/images/equipments/checklist.png",
      noOfMinuites: 20,
      handOvered: false,
      noOfCalories: 150,
    ),
    Equipment(
      id: 2,
      equipmentName: "Yoga Mat",
      equipmentDescription: "A mat for practicing yoga and floor exercises.",
      equipmentImageUrl: "assets/images/equipments/dumbbell.png",
      noOfMinuites: 60,
      handOvered: false,
      noOfCalories: 300,
    ),
  ],
  favExerciseList: [
    Exercise(
      exerciseName: "Plank",
      exerciseImageUrl: "assets/images/exercises/plank.png",
      noOfMinuites: 30,
      id: 2,
      completed: false,
    ),
  ],
  favEquipmentList: [
    Equipment(
      id: 3,
      equipmentName: "Dumbbells",
      equipmentDescription: "Weights used for strength training.",
      equipmentImageUrl: "assets/images/equipments/dumbbell.png",
      noOfMinuites: 30,
      handOvered: false,
      noOfCalories: 200,
    ),
  ],
);
