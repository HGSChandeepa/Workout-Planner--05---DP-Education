import 'package:app_06_workout_planer/constants/colors.dart';
import 'package:app_06_workout_planer/constants/consant_values.dart';
import 'package:app_06_workout_planer/models/equipment_model.dart';
import 'package:app_06_workout_planer/widgets/equipment_card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EquipmentDetailsPage extends StatefulWidget {
  final String title;
  final String description;
  final List<Equipment> equipemtList;
  const EquipmentDetailsPage({
    super.key,
    required this.title,
    required this.description,
    required this.equipemtList,
  });

  @override
  State<EquipmentDetailsPage> createState() => _EquipmentDetailsPageState();
}

class _EquipmentDetailsPageState extends State<EquipmentDetailsPage> {
  //for the date and time formats
  final DateFormat formatter = DateFormat('EEEE, MMMM');
  final DateFormat dayFormatter = DateFormat('dd');
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String formatedDateNumber = dayFormatter.format(now);
    return Scaffold(
      appBar: AppBar(
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
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              Text(
                widget.description,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: kMainColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: kDefaultPadding,
                  mainAxisSpacing: kDefaultPadding,
                  childAspectRatio: 16 / 9,
                ),
                itemCount: widget.equipemtList.length,
                itemBuilder: (context, index) {
                  Equipment equipment = widget.equipemtList[index];
                  return EquipmentCard(
                    equipmentName: equipment.equipmentName,
                    equipmentImageUrl: equipment.equipmentImageUrl,
                    noOfMinuites: equipment.noOfMinuites,
                    equipmentDescription: equipment.equipmentDescription,
                    noOfCalories: equipment.noOfCalories,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
