import 'package:app_06_workout_planer/constants/colors.dart';
import 'package:app_06_workout_planer/constants/consant_values.dart';
import 'package:app_06_workout_planer/data/equipment_data.dart';
import 'package:app_06_workout_planer/data/exercise_data.dart';
import 'package:app_06_workout_planer/data/user_data.dart';
import 'package:app_06_workout_planer/pages/equipments_details_page.dart';
import 'package:app_06_workout_planer/pages/exercise_details_page.dart';
import 'package:app_06_workout_planer/widgets/exercise_card.dart';
import 'package:app_06_workout_planer/widgets/progess_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final DateFormat formatter = DateFormat('EEEE, MMMM');
  final DateFormat dayFormatter = DateFormat('dd');

  final exerciseData = ExerciseData();
  final equipmentData = EquipmentData();

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    final userData = user;

    final progressValue = userData.calculateTotalCaloriesBurned() / 2;
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

                // Progress Card
                ProgressCard(
                  progressValue: progressValue,
                  total: 100,
                ),

                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Today’s Activity",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: kMainColor,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseLayout(
                              title: "Running",
                              description:
                                  "Running is a method of terrestrial locomotion allowing humans and other animals to move rapidly on foot. It is simply defined in athletics terms as a gait in which at regular points during the running cycle both feet are off the ground. ",
                              exercises: exerciseData.exerciseList,
                              equipments: equipmentData.equipmentList,
                              showEquipment: false,
                            ),
                          ),
                        );
                      },
                      child: const ExerciseCard(
                        title: "Running",
                        image: "assets/images/exercises/cobra.png",
                        noOfMinutes: "30",
                        showMore: true,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseLayout(
                              title: "Warmpup",
                              description:
                                  "Warmup is a method of preparing the body for exercise or sports by increasing the heart rate and warming the muscles. It is a simple exercise that helps to increase the blood flow to the muscles and prepare them for physical activity.",
                              exercises: exerciseData.exerciseList,
                              equipments: equipmentData.equipmentList,
                              showEquipment: false,
                            ),
                          ),
                        );
                      },
                      child: const ExerciseCard(
                        title: "Warmup",
                        image:
                            "assets/images/exercises/treadmill-machine_men.png",
                        noOfMinutes: "30",
                        showMore: true,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EquipmentDetailsPage(
                              title: "Equipments",
                              description:
                                  "Running is a method of terrestrial locomotion allowing humans and other animals to move rapidly on foot. It is simply defined in athletics terms as a gait in which at regular points during the running cycle both feet are off the ground. ",
                              equipemtList: equipmentData.equipmentList,
                            ),
                          ),
                        );
                      },
                      child: const ExerciseCard(
                        title: "Equipment",
                        image: "assets/images/exercises/downward-facing.png",
                        noOfMinutes: "30",
                        showMore: true,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseLayout(
                              title: "Exercise",
                              description:
                                  "Warmup is a method of preparing the body for exercise or sports by increasing the heart rate and warming the muscles. It is a simple exercise that helps to increase the blood flow to the muscles and prepare them for physical activity.",
                              exercises: exerciseData.exerciseList,
                              equipments: equipmentData.equipmentList,
                              showEquipment: false,
                            ),
                          ),
                        );
                      },
                      child: const ExerciseCard(
                        title: "Exercise",
                        image: "assets/images/exercises/dragging.png",
                        noOfMinutes: "30",
                        showMore: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
