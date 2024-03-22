import 'package:app_06_workout_planer/constants/colors.dart';
import 'package:flutter/material.dart';

class AddExerciseCard extends StatelessWidget {
  final String title;
  final String image;
  final String noOfMinutes;
  final bool showMore;

  const AddExerciseCard({
    super.key,
    required this.title,
    required this.image,
    required this.noOfMinutes,
    required this.showMore,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: kCardBackgroundColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: 100,
            ),
          ),
          if (!showMore)
            Text(
              "$noOfMinutes minutes",
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          const SizedBox(
            height: 5,
          ),
          if (showMore)
            const Text(
              "see more",
              style: TextStyle(
                fontSize: 15,
                color: kGradientBottomColor,
              ),
            ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: kCardButtonColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: IconButton(
                      icon: const Icon(
                        Icons.add,
                        size: 30,
                        color: kGradientBottomColor,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: kCardButtonColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: IconButton(
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.pink,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
