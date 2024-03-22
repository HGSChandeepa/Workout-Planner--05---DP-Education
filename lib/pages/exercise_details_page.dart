import 'package:app_06_workout_planer/constants/colors.dart';
import 'package:app_06_workout_planer/constants/consant_values.dart';
import 'package:app_06_workout_planer/models/equipment_model.dart';
import 'package:app_06_workout_planer/models/exercise_model.dart';
import 'package:app_06_workout_planer/widgets/exercise_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExerciseLayout extends StatefulWidget {
  final String title;
  final String description;
  final List<Exercise> exercises;
  final List<Equipment> equipments;
  final bool showEquipment;

  const ExerciseLayout({
    Key? key,
    required this.title,
    required this.description,
    required this.exercises,
    required this.equipments,
    required this.showEquipment,
  }) : super(key: key);

  @override
  State<ExerciseLayout> createState() => _ExerciseLayoutState();
}

class _ExerciseLayoutState extends State<ExerciseLayout> {
  final DateFormat formatter = DateFormat('EEEE, MMMM');

  final DateFormat dayFormatter = DateFormat('dd');

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Column(
          children: [
            Text(
              formattedDate.toUpperCase(),
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: kSubtitleColor,
              ),
            ),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: kMainColor,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.description,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: kMainColor,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                if (!widget.showEquipment)
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: kDefaultPadding,
                      mainAxisSpacing: kDefaultPadding,
                    ),
                    itemCount: widget.exercises.length,
                    itemBuilder: (context, index) {
                      Exercise exercise = widget.exercises[index];
                      return ExerciseCard(
                        title: exercise.exerciseName,
                        image: exercise.exerciseImageUrl,
                        noOfMinutes: exercise.noOfMinuites.toString(),
                        showMore: false,
                      );
                    },
                  ),
                if (widget.showEquipment)
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: kDefaultPadding,
                      mainAxisSpacing: kDefaultPadding,
                    ),
                    itemCount: widget.equipments.length,
                    itemBuilder: (context, index) {
                      Equipment equipment = widget.equipments[index];
                      return ExerciseCard(
                        title: equipment.equipmentName,
                        image: equipment.equipmentImageUrl,
                        noOfMinutes: equipment.noOfMinuites.toString(),
                        showMore: false,
                      );
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
