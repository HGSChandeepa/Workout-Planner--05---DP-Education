import 'package:app_06_workout_planer/constants/colors.dart';
import 'package:flutter/material.dart';

class ProgressCard extends StatefulWidget {
  final double progressValue;
  final int total;
  const ProgressCard({
    Key? key,
    required this.progressValue,
    required this.total,
  }) : super(key: key);

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {
    // Calculate the done value based on the progress value
    int done = (widget.progressValue * widget.total).toInt();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [kGradientTopColor, kGradientBottomColor],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Proteins, Fats, Water & \nCarbohydrates",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.w600,
                color: kMainWhiteColor,
              ),
            ),
            const SizedBox(
                height: 10), // Add some space between text and progress bar
            LinearProgressIndicator(
              value: widget
                  .progressValue, // Adjust this value to set the filled amount
              backgroundColor:
                  kGradientBottomColor, // Grey color for unfilled region
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
              borderRadius: BorderRadius.circular(100),
              minHeight: 15,
            ),
            const SizedBox(
                height: 10), // Add some space between progress bar and tags
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTag('Done', done.toString()),
                _buildTag('Total', widget.total.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: kMainWhiteColor,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: kMainWhiteColor,
          ),
        ),
      ],
    );
  }
}
