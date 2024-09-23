class Chapter {
  final String title;
  final int pages;
  final String date;
  final String time;
  bool downloaded;
  final String publisher;
  Chapter({
    required this.time,
    required this.title,
    required this.pages,
    required this.date,
    required this.downloaded,
    required this.publisher,
  });
}
