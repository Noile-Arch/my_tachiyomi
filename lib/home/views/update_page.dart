import 'package:flutter/material.dart';

import '../../data/lists/chapter_list.dart';
import '../../data/mangas.dart';

class UpdatesPage extends StatefulWidget {
  const UpdatesPage({super.key});

  @override
  State<UpdatesPage> createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
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
    final manga = myMangas[2];
    final manga2 = myMangas[3];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Updates",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            color: Colors.white70,
          ),
        ),
        actions: [
          IconButton(
            color: Colors.white70,
            onPressed: () {},
            icon: const Icon(
              Icons.refresh_sharp,
              size: 25,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //last updated
              Text(
                'Last Updated: 5 days ago',
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  '07/07/2024',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: manga.allChapters.length,
                itemBuilder: (context, index) {
                  final chapter = manga.allChapters[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: ListTile(
                      titleTextStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                      subtitleTextStyle:
                          const TextStyle(fontSize: 12, color: Colors.white70),
                      leading: Container(
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage(manga.pic),
                                fit: BoxFit.cover)),
                      ),
                      title: Row(children: [
                        Text(
                          manga.title,
                        ),
                      ]),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 40),
                          Text(chapter.title),
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  '10/07/2024',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: manga2.allChapters.length,
                itemBuilder: (context, index) {
                  final chapter = manga2.allChapters[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: ListTile(
                      titleTextStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                      subtitleTextStyle:
                          const TextStyle(fontSize: 12, color: Colors.white70),
                      leading: Container(
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage(manga2.pic),
                                fit: BoxFit.cover)),
                      ),
                      title: Row(children: [
                        Text(
                          manga2.title,
                        ),
                      ]),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 40),
                          Text(chapter.title),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
