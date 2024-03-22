import 'package:app_06_workout_planer/constants/colors.dart';
import 'package:flutter/material.dart';

class FavCard extends StatefulWidget {
  final String title;
  final String image;
  final String noOfMinutes;
  final bool showMore;

  final bool isFavorite;
  final void Function() toggleFavorite;

  const FavCard({
    super.key,
    required this.title,
    required this.image,
    required this.noOfMinutes,
    required this.showMore,
    required this.toggleFavorite,
    required this.isFavorite,
  });

  @override
  State<FavCard> createState() => _FavCardState();
}

class _FavCardState extends State<FavCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.27,
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
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
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
              height: 5,
            ),
            IconButton(
              icon: Icon(
                widget.isFavorite
                    ? Icons.favorite_sharp
                    : Icons.favorite_border,
                color: Colors.pink,
              ),
              onPressed: () {
                widget.toggleFavorite();
              },
            ),
          ],
        ),
      ),
    );
  }
}
