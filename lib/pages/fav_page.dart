import 'package:app_06_workout_planer/constants/colors.dart';
import 'package:app_06_workout_planer/constants/consant_values.dart';
import 'package:app_06_workout_planer/data/user_data.dart';
import 'package:app_06_workout_planer/models/exercise_model.dart';
import 'package:app_06_workout_planer/models/user_model.dart';
import 'package:app_06_workout_planer/widgets/fav_exercise_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  final DateFormat formatter = DateFormat('EEEE, MMMM');
  final DateFormat dayFormatter = DateFormat('dd');

  final userData = User;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    final userData = user;

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
                Row(
                  children: [
                    Text(
                      "Hello, ${userData.fullName}",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: kMainColor,
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.favorite, color: Colors.pink, size: 30),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Here are all your favorited Workouts",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: kGradientTopColor,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: kDefaultPadding,
                    mainAxisSpacing: kDefaultPadding,
                    childAspectRatio: 4 / 5,
                  ),
                  itemCount: userData.favExerciseList.length,
                  itemBuilder: (context, index) {
                    Exercise favExercise = userData.favExerciseList[index];
                    return FavCard(
                      title: favExercise.exerciseName,
                      image: favExercise.exerciseImageUrl,
                      noOfMinutes: favExercise.noOfMinuites.toString(),
                      showMore: false,
                      isFavorite:
                          userData.favExerciseList.contains(favExercise),
                      toggleFavorite: () {
                        setState(() {
                          if (userData.favExerciseList.contains(favExercise)) {
                            userData.removeFavExercise(favExercise);
                          } else {
                            userData.addFavExercise(favExercise);
                          }
                          print(userData.favExerciseList.length);
                        });
                      },
                    );
                  },
                ),

                // FavCard(
                //     title: "adasda",
                //     image: "assets/images/exercises/downward-facing.png",
                //     noOfMinutes: 23.toString(),
                //     showMore: false,
                //     toggleFavorite: () {},
                //     isFavorite: false)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
