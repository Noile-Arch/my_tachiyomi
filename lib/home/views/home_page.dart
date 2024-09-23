import 'package:flutter/material.dart';
import 'package:my_tachiyomi/data/lists/chapter_list.dart';
import 'package:my_tachiyomi/home/views/details_screen.dart';
import '../../data/mangas.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          letterSpacing: 1,
          fontWeight: FontWeight.w400,
        ),
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Library"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_list),
                ),
                const SizedBox(width: 20),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert_rounded),
                ),
              ],
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 9 / 13,
          ),
          itemCount: myMangas.length,
          itemBuilder: (context, index) {
            final manga = myMangas[index];
            return Material(
              color: Colors.black,
              borderOnForeground: false,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(manga: manga),
                    ),
                  );
                },
                child: Ink(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.grey[300],
                      image: DecorationImage(
                        image: AssetImage(manga.pic),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.black26,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 1, horizontal: 6),
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              manga.chapters.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              manga.title,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
