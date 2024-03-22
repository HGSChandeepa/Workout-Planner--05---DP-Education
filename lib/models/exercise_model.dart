class Exercise {
  final int id;
  final String exerciseName;
  final String exerciseImageUrl;
  final int noOfMinuites;
  bool completed;

  Exercise({
    required this.exerciseName,
    required this.exerciseImageUrl,
    required this.noOfMinuites,
    required this.id,
    required this.completed,
  });
}
