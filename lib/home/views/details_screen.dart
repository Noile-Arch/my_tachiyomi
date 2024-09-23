import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../components/chapter_view.dart';
import '../../components/expandable_text.dart';
import '../../data/mangas.dart';

class DetailsScreen extends StatelessWidget {
  final Mangas manga;

  const DetailsScreen({super.key, required this.manga});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        toolbarHeight: 50,
        iconTheme: const IconThemeData(color: Colors.white, size: 25),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          letterSpacing: 1,
          fontWeight: FontWeight.w400,
        ),
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.download_outlined),
            ),
            const SizedBox(width: 20),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_list,
                color: Colors.yellowAccent,
              ),
            ),
            const SizedBox(width: 20),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_rounded),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(manga.pic),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  padding: const EdgeInsets.only(
                      left: 20, top: 120, right: 20, bottom: 0),
                  color: Colors.black87,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              height: 180,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: AssetImage(manga.pic),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  manga.title,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.person_2_outlined,
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      manga.author,
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.access_time_outlined,
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      manga.status,
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    const Icon(
                                      Icons.circle_rounded,
                                      color: Colors.grey,
                                      size: 8,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      manga.extension,
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, top: 20, right: 10, bottom: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Column(
                                children: [
                                  Icon(
                                    CupertinoIcons.heart_fill,
                                    color: Colors.pink,
                                    size: 24,
                                  ),
                                  Text(
                                    "In Library",
                                    style: TextStyle(
                                      color: Colors.pink,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Column(
                                children: [
                                  Icon(
                                    Icons.hourglass_empty_sharp,
                                    color: Colors.white30,
                                    size: 24,
                                  ),
                                  Text(
                                    "Soon",
                                    style: TextStyle(
                                      color: Colors.white30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Column(
                                children: [
                                  Icon(
                                    Icons.sync,
                                    color: Colors.white30,
                                    size: 24,
                                  ),
                                  Text(
                                    "Tracking",
                                    style: TextStyle(
                                      color: Colors.white30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Column(
                                children: [
                                  Icon(
                                    CupertinoIcons.globe,
                                    color: Colors.white30,
                                    size: 24,
                                  ),
                                  Text(
                                    "WebView",
                                    style: TextStyle(
                                      color: Colors.white30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ExpandableText(text: manga.info),
            ),
            ChapterView(allChapters: manga.allChapters),
          ],
        ),
      ),
    );
  }
}
