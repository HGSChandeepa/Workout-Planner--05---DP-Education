import 'package:app_06_workout_planer/constants/colors.dart';
import 'package:flutter/material.dart';

class AddExerciseCard extends StatefulWidget {
  final String title;
  final String image;
  final String noOfMinutes;
  final bool showMore;
  final bool isAdded;
  final bool isFavorite;
  final void Function() toggleAddExercise;
  final void Function() toggleAddFavoriteExercise;

  const AddExerciseCard({
    super.key,
    required this.title,
    required this.image,
    required this.noOfMinutes,
    required this.showMore,
    required this.toggleAddExercise,
    required this.toggleAddFavoriteExercise,
    required this.isAdded,
    required this.isFavorite,
  });

  @override
  State<AddExerciseCard> createState() => _AddExerciseCardState();
}

class _AddExerciseCardState extends State<AddExerciseCard> {
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
            widget.title,
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
              widget.image,
              fit: BoxFit.cover,
              width: 100,
            ),
          ),
          if (!widget.showMore)
            Text(
              "${widget.noOfMinutes} minutes",
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          const SizedBox(
            height: 5,
          ),
          if (widget.showMore)
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
                      icon: Icon(
                        widget.isAdded ? Icons.remove : Icons.add,
                        size: 30,
                        color: kGradientBottomColor,
                      ),
                      onPressed: () {
                        widget.toggleAddExercise();
                      },
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
                      icon: Icon(
                        widget.isFavorite
                            ? Icons.favorite_sharp
                            : Icons.favorite_border,
                        color: Colors.pink,
                      ),
                      onPressed: () {
                        widget.toggleAddFavoriteExercise();
                      },
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
