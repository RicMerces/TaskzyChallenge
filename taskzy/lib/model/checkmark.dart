class Checkmark {
  Checkmark(
      {required this.title,
      this.checked = false,
      required this.date,
      required this.description});

  final String title;
  bool checked;
  final String date;
  final String description;
}
