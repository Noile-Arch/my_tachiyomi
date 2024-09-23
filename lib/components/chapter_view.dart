import 'package:flutter/material.dart';

class ChapterView extends StatefulWidget {
  const ChapterView({super.key, required this.allChapters});
  final List allChapters;
  @override
  State<ChapterView> createState() => _ChapterViewState();
}

class _ChapterViewState extends State<ChapterView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: widget.allChapters.length,
      itemBuilder: (context, index) {
        final chapter = widget.allChapters[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            titleTextStyle: const TextStyle(
                fontSize: 14, color: Colors.white, fontWeight: FontWeight.w600),
            subtitleTextStyle:
                const TextStyle(fontSize: 12, color: Colors.white70),
            title: Row(children: [
              const Icon(
                Icons.circle_sharp,
                size: 10,
                color: Colors.pink,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                chapter.title,
              ),
            ]),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Text(chapter.date),
                const SizedBox(
                  width: 6,
                ),
                const Icon(
                  Icons.circle_rounded,
                  size: 5,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(chapter.publisher),
              ],
            ),
            trailing: Icon(
              chapter.downloaded
                  ? Icons.check_circle
                  : Icons.arrow_circle_down_sharp,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
