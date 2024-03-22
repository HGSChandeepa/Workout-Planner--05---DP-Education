import 'package:app_06_workout_planer/constants/colors.dart';
import 'package:app_06_workout_planer/constants/consant_values.dart';
import 'package:app_06_workout_planer/data/user_data.dart';
import 'package:app_06_workout_planer/widgets/profile_exercise_card.dart';
import 'package:app_06_workout_planer/widgets/progess_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final DateFormat formatter = DateFormat('EEEE, MMMM');
  final DateFormat dayFormatter = DateFormat('dd');
  final userData = user;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    final progressValue = userData.calculateTotalCaloriesBurned() / 1000;
    // ignore: avoid_print
    print(progressValue);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Your Progress",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ProgressCard(
                  progressValue: progressValue,
                  total: 100,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: kSubtitleColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Totla Minutes Spend: ${userData.calculateTotalMinutesSpent()}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: kGradientBottomColor,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Totla Exercises Completed: ${userData.totlaExercisesCompleted}",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Totla Equipments handovered: ${userData.totlaEquipmentHandedOver}",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Your Exercises",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: kGradientBottomColor,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: userData.exerciseList.length,
                  itemBuilder: (context, index) {
                    return ProfileExerciseCard(
                      exerciseName: userData.exerciseList[index].exerciseName,
                      image: userData.exerciseList[index].exerciseImageUrl,
                      markAsDone: () {
                        setState(() {
                          userData.markExerciseAsCompleted(
                              userData.exerciseList[index].id);
                        });
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Your Equipments",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: kGradientBottomColor,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: userData.equipmentList.length,
                  itemBuilder: (context, index) {
                    return ProfileExerciseCard(
                      exerciseName: userData.equipmentList[index].equipmentName,
                      image: userData.equipmentList[index].equipmentImageUrl,
                      markAsDone: () {
                        setState(() {
                          userData.markEquipmentAsHandedOver(
                              userData.equipmentList[index].id);
                        });
                      },
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
