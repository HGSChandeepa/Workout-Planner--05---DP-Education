import 'package:app_06_workout_planer/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddEquipments extends StatefulWidget {
  final String equipmentName;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noOfMinuites;
  final double noOfCalories;
  final bool isAdded;
  final bool isFavorite;
  final void Function() toggleAddEquipment;
  final void Function() toggleAddFavoriteEquipment;
  const AddEquipments(
      {super.key,
      required this.equipmentName,
      required this.equipmentDescription,
      required this.equipmentImageUrl,
      required this.noOfMinuites,
      required this.noOfCalories,
      required this.isAdded,
      required this.isFavorite,
      required this.toggleAddEquipment,
      required this.toggleAddFavoriteEquipment});

  @override
  State<AddEquipments> createState() => _AddEquipmentsState();
}

class _AddEquipmentsState extends State<AddEquipments> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
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
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.equipmentName,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: kMainColor,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            widget.equipmentImageUrl,
                            fit: BoxFit.cover,
                            width: 100,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Column(
                            children: [
                              Text(
                                widget.equipmentDescription,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: kSubtitleColor,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Time: ${widget.noOfMinuites} min and ${widget.noOfCalories} cal burned",
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: kGradientBottomColor,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ],
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
                          widget.toggleAddEquipment();
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
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Colors.pink,
                        ),
                        onPressed: () {
                          widget.toggleAddFavoriteEquipment();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
