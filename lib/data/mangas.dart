class Mangas {
  final String title;
  late String author = 'Unknown author';
  final String extension;
  final String pic;
  late int chapters = 0;
  final String info;
  final String status;
  final int id;
  final List allChapters;
  Mangas(
      {required this.title,
      required this.allChapters,
      required this.author,
      required this.extension,
      required this.info,
      required this.pic,
      required this.status,
      required this.id,
      required this.chapters});
}
