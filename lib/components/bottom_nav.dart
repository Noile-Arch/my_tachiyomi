import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: () {},
              child: const Column(
                children: [
                  Icon(
                    Icons.collections_bookmark_outlined,
                    color: Colors.grey,
                  ),
                  Text(
                    "Library",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )),
          TextButton(
              onPressed: () {},
              child: const Column(
                children: [
                  Icon(
                    Icons.new_releases_outlined,
                    color: Colors.grey,
                  ),
                  Text(
                    "Updates",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )),
          TextButton(
              onPressed: () {},
              child: const Column(
                children: [
                  Icon(
                    Icons.history,
                    color: Colors.grey,
                  ),
                  Text(
                    "History",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )),
          TextButton(
              onPressed: () {},
              child: const Column(
                children: [
                  Icon(
                    Icons.extension_outlined,
                    color: Colors.grey,
                  ),
                  Text(
                    "Browse",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )),
          TextButton(
              onPressed: () {},
              child: const Column(
                children: [
                  Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.grey,
                  ),
                  Text(
                    "More",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
