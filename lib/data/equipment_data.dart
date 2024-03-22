import 'package:app_06_workout_planer/models/equipment_model.dart';

class EquipmentData {
  final List<Equipment> equipmentList = [
    Equipment(
      id: 0,
      equipmentName: "Dumbbells",
      equipmentDescription:
          "A pair of dumbbells for strength training exercises.",
      equipmentImageUrl: "assets/images/equipments/calendar.png",
      noOfMinuites: 30,
      noOfCalories: 200,
      handOvered: false,
    ),
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
    Equipment(
      id: 3,
      equipmentName: "Jump Rope",
      equipmentDescription:
          "A rope used for cardiovascular exercises and coordination training.",
      equipmentImageUrl: "assets/images/equipments/dumbbells.png",
      noOfMinuites: 15,
      handOvered: false,
      noOfCalories: 120,
    ),
    Equipment(
      id: 4,
      equipmentName: "Kettlebells",
      equipmentDescription:
          "Weights with a handle used for strength, endurance, and flexibility training.",
      equipmentImageUrl: "assets/images/equipments/facial-roller.png",
      noOfMinuites: 45,
      handOvered: false,
      noOfCalories: 250,
    ),
    Equipment(
      id: 5,
      equipmentName: "Exercise Ball",
      equipmentDescription:
          "A large, inflatable ball used for core and stability exercises.",
      equipmentImageUrl: "assets/images/equipments/stationary-bike.png",
      noOfMinuites: 25,
      handOvered: false,
      noOfCalories: 150,
    ),
    Equipment(
      id: 6,
      equipmentName: "Pull-up Bar",
      equipmentDescription:
          "A bar mounted to a wall or doorframe for upper body strength exercises.",
      equipmentImageUrl: "assets/images/equipments/treadmill.png",
      noOfMinuites: 40,
      handOvered: false,
      noOfCalories: 200,
    ),
    Equipment(
      id: 7,
      equipmentName: "Medicine Ball",
      equipmentDescription:
          "A heavy ball used for strength and coordination exercises.",
      equipmentImageUrl: "assets/images/equipments/facial-roller.png",
      noOfMinuites: 35,
      handOvered: false,
      noOfCalories: 180,
    ),
    Equipment(
      id: 8,
      equipmentName: "Bench",
      equipmentDescription:
          "A stable surface for various strength training exercises.",
      equipmentImageUrl: "assets/images/equipments/dumbbells.png",
      noOfMinuites: 55,
      handOvered: false,
      noOfCalories: 280,
    ),
    Equipment(
      id: 9,
      equipmentName: "Barbell",
      equipmentDescription:
          "A long metal bar with weights attached to each end, used for resistance training.",
      equipmentImageUrl: "assets/images/equipments/skipping-rope.png",
      noOfMinuites: 50,
      handOvered: false,
      noOfCalories: 270,
    ),
  ];
}
