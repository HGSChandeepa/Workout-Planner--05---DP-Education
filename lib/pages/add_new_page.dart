import 'package:app_06_workout_planer/constants/colors.dart';
import 'package:app_06_workout_planer/constants/consant_values.dart';
import 'package:app_06_workout_planer/data/equipment_data.dart';
import 'package:app_06_workout_planer/data/exercise_data.dart';
import 'package:app_06_workout_planer/data/user_data.dart';
import 'package:app_06_workout_planer/models/equipment_model.dart';
import 'package:app_06_workout_planer/widgets/add_equipments.dart';
import 'package:app_06_workout_planer/widgets/add_exercise_card.dart';
import 'package:flutter/material.dart';
import 'package:app_06_workout_planer/models/exercise_model.dart';

class AddNewPage extends StatefulWidget {
  const AddNewPage({Key? key}) : super(key: key);

  @override
  State<AddNewPage> createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {
  final userData = user;
  final allExercises = ExerciseData().exerciseList;
  final allEquipments = EquipmentData().equipmentList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, ${userData.fullName}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: kMainColor,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Let's Add Some Workouts and Equipment for today!",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: kGradientTopColor,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "All Exercises",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: kMainColor,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 270,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: allExercises.length,
                  itemBuilder: (context, index) {
                    Exercise exercise = allExercises[index];
                    return AddExerciseCard(
                      title: exercise.exerciseName,
                      image: exercise.exerciseImageUrl,
                      noOfMinutes: exercise.noOfMinuites.toString(),
                      showMore: false,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "All Equipments",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: kMainColor,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 400,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: allEquipments.length,
                  itemBuilder: (context, index) {
                    Equipment equipment = allEquipments[index];
                    return AddEquipments(
                      equipmentName: equipment.equipmentName,
                      equipmentImageUrl: equipment.equipmentImageUrl,
                      equipmentDescription: equipment.equipmentDescription,
                      noOfMinuites: equipment.noOfMinuites,
                      noOfCalories: equipment.noOfCalories,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
