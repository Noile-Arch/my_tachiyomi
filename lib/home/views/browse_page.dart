import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/extensions.dart';

class BrowsePage extends StatefulWidget {
  const BrowsePage({super.key});

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  List<myExtension> extensions = [
    myExtension(
        title: "Asura Scans",
        lang: "English",
        pic: "assets/rooms.jpg",
        version: "1.4.8",
        inLibrary: '6'),
    myExtension(
        title: "Flame Scans",
        lang: "English",
        pic: "assets/gone.jpg",
        version: "1.4.17",
        inLibrary: '11'),
    myExtension(
        title: "MangaHere ",
        lang: "English",
        pic: "assets/awakening.jpg",
        version: "1.4.58",
        inLibrary: '1'),
  ];
  @override
  Widget build(BuildContext context) {
    final data = extensions;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Browse"),
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
                icon: const Icon(Icons.search_rounded),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.filter_list),
              ),
            ),
          ],
          bottom: TabBar(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              indicatorColor: Colors.pink.shade600,
              dividerColor: Colors.grey.shade800,
              labelColor: Colors.pink.shade800,
              unselectedLabelColor: Colors.grey.shade300,
              tabs: const [
                Tab(
                  text: "Sources",
                ),
                Tab(
                  text: "Extensions",
                ),
                Tab(
                  text: "Migrate",
                ),
              ]),
        ),
        body: TabBarView(children: [
          //all sources
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Last used",
                  style: TextStyle(color: Colors.white70),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final myData = data[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(myData.pic))),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    myData.title,
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 14),
                                  ),
                                  Text(
                                    myData.lang,
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Latest",
                                    style: TextStyle(
                                        color: Colors.pink.shade500,
                                        fontSize: 14),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: const Icon(CupertinoIcons.pin),
                                  ),
                                ],
                              )
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

          //all extensions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Installed",
                  style: TextStyle(color: Colors.white70),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final myData = data[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(myData.pic))),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        myData.title,
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 14),
                                      ),
                                      Text(
                                        '${myData.lang}  ${myData.version}',
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    icon: const Icon(Icons.settings_outlined),
                                  ),
                                ],
                              )
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

          // migrate extension
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Select a source to migrate from",
                  style: TextStyle(color: Colors.white70),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final myData = data[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: SizedBox(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(myData.pic))),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        myData.title,
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 14),
                                      ),
                                      Text(
                                        myData.lang,
                                        style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: Colors.pink.shade600,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  myData.inLibrary,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              )
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
        ]),
      ),
    );
  }
}
