import 'package:app_06_workout_planer/models/exercise_model.dart';

class ExerciseData {
  final List<Exercise> exerciseList = [
    Exercise(
      exerciseName: "Push-ups",
      exerciseImageUrl: "assets/images/exercises/cobra.png",
      noOfMinuites: 15,
      id: 0,
      completed: false,
    ),
    Exercise(
      exerciseName: "Squats",
      exerciseImageUrl: "assets/images/exercises/downward-facing.png",
      noOfMinuites: 20,
      id: 1,
      completed: false,
    ),
    Exercise(
      exerciseName: "Plank",
      exerciseImageUrl: "assets/images/exercises/dragging.png",
      noOfMinuites: 30,
      id: 2,
      completed: false,
    ),
    Exercise(
      exerciseName: "Jumping Jacks",
      exerciseImageUrl: "assets/images/exercises/hunch_back.png",
      noOfMinuites: 10,
      completed: false,
      id: 3,
    ),
    Exercise(
      exerciseName: "Crunches",
      exerciseImageUrl: "assets/images/exercises/treadmill-machine_men.png",
      noOfMinuites: 15,
      id: 4,
      completed: false,
    ),
    Exercise(
      exerciseName: "Lunges",
      exerciseImageUrl: "assets/images/exercises/treadmill-machine_women.png",
      noOfMinuites: 20,
      id: 5,
      completed: false,
    ),
    Exercise(
      exerciseName: "Burpees",
      exerciseImageUrl: "assets/images/exercises/triangle.png",
      noOfMinuites: 25,
      id: 6,
      completed: false,
    ),
    Exercise(
      exerciseName: "High Knees",
      exerciseImageUrl: "assets/images/exercises/weightlifting.png",
      noOfMinuites: 10,
      id: 7,
      completed: false,
    ),
    Exercise(
      exerciseName: "Bicycle Crunches",
      exerciseImageUrl: "assets/images/exercises/yoga.png",
      noOfMinuites: 20,
      id: 8,
      completed: false,
    ),
    Exercise(
      exerciseName: "Leg Raises",
      exerciseImageUrl: "assets/images/exercises/triangle.png",
      noOfMinuites: 15,
      id: 9,
      completed: false,
    ),
  ];
}
