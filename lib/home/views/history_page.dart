import 'package:flutter/material.dart';

import '../../data/lists/chapter_list.dart';
import '../../data/mangas.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  List<Mangas> myMangas = [
    Mangas(
      id: 1,
      status: "Ongoing",
      title: "Soul Snatchers",
      author: "Richard Sanford",
      extension: "Asura Scans",
      info: "New",
      pic: "assets/soul.jpg",
      chapters: 124,
      allChapters: myChapters,
    ),
    Mangas(
        id: 2,
        status: "Ongoing",
        title: "Finding Camlann",
        author: "Sean Pidgeon",
        extension: "Flame Scans",
        info: "Latest",
        pic: "assets/camplann.jpg",
        chapters: 140,
        allChapters: myChapters),
    Mangas(
        id: 3,
        status: "Ongoing",
        title: "Monstrous Lies",
        author: "Shina James",
        extension: "Dark Scans",
        info: "Latest",
        pic: "assets/control.jpg",
        chapters: 40,
        allChapters: myChapters),
    Mangas(
        id: 4,
        status: "Finished",
        title: "Silhouette",
        author: "Dave Swavely",
        extension: "Webtoon",
        info: "Latest",
        pic: "assets/silhouette.jpg",
        chapters: 200,
        allChapters: myChapters),
    Mangas(
        id: 5,
        status: "Ongoing",
        title: "The Shadow Cypher (Book 1)",
        author: "Laura Ruby",
        extension: "Flame Scans",
        info: "Latest",
        pic: "assets/york.jpg",
        chapters: 80,
        allChapters: myChapters),
    Mangas(
        id: 6,
        status: "Finished",
        title: "The Past Is Rising",
        author: "Kathryn Bywaters",
        extension: "Ninja Scans",
        info: "Very dark",
        pic: "assets/rising.jpg",
        chapters: 260,
        allChapters: []),
  ];

  @override
  Widget build(BuildContext context) {
    final manga = myMangas[4];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("History"),
        backgroundColor: Colors.black,
        titleTextStyle: const TextStyle(
            color: Colors.white70,
            fontSize: 20,
            letterSpacing: 1,
            fontWeight: FontWeight.bold),
        iconTheme: const IconThemeData(color: Colors.white70, size: 26),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete_sweep_outlined),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Today",
              style: TextStyle(color: Colors.white70),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                itemCount: manga.allChapters.length,
                itemBuilder: (context, index) {
                  final chapter = manga.allChapters[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: SizedBox(
                      height: 100, // Set the desired height
                      child: Row(
                        children: [
                          Container(
                            width: 70,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                image: AssetImage(manga.pic),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListTile(
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              titleTextStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                              subtitleTextStyle: const TextStyle(
                                  fontSize: 14, color: Colors.white70),
                              title: Text(manga.title),
                              subtitle:
                                  Text('${chapter.title} - ${chapter.time}'),
                              trailing: IconButton(
                                color: Colors.white,
                                onPressed: () {},
                                icon: const Icon(Icons.delete_outline_rounded),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
