import 'package:flutter/material.dart';

class Gridcard extends StatefulWidget {
  const Gridcard({super.key});

  @override
  State<Gridcard> createState() => _GridcardState();
}

class _GridcardState extends State<Gridcard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      borderOnForeground: false,
      child: InkWell(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute<void>(
          //     builder: (BuildContext context) => const DetailsScreen(),
          //   ),
          // );
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.grey[300],
              image: const DecorationImage(
                  image: AssetImage('assets/york.jpg'), fit: BoxFit.cover)),
          padding: const EdgeInsets.all(0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.black26,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 0,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 1, horizontal: 6),
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(6)),
                    child: const Text(
                      'manga.chapters.toString()',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  flex: 0,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'manga.title',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
