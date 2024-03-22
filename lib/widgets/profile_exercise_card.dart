
import 'package:app_06_workout_planer/constants/colors.dart';
import 'package:flutter/material.dart';

class ProfileExerciseCard extends StatefulWidget {
  final String exerciseName;
  final String image;
  final void Function() markAsDone;
  const ProfileExerciseCard(
      {super.key,
      required this.exerciseName,
      required this.image,
      required this.markAsDone});

  @override
  State<ProfileExerciseCard> createState() => _ProfileExerciseCardState();
}

class _ProfileExerciseCardState extends State<ProfileExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: kSubtitleColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              widget.exerciseName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: widget.markAsDone,
              icon: const Icon(Icons.check),
            ),
          ],
        ),
      ),
    );
  }
}
