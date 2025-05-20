import 'package:flutter/material.dart';

import 'defalutImageCard.dart';

class assignment2 extends StatelessWidget {
  final List<String> assetImage = [
    'assets/b2.jpg',
    'assets/one.jpg',
    'assets/b2.jpg',
    'assets/one.jpg',
    'assets/b2.jpg',
    'assets/one.jpg',
    'assets/b2.jpg',
    'assets/one.jpg',
    'assets/b2.jpg',
    'assets/one.jpg',
  ];

  int getCrossAxisCount(double width) {
    if (width < 768) {
      return 2;
    } else if (width >= 768 && width < 1024) {
      return 3;
    } else {
      return 4;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive UI Image "),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final crossAxisCount = getCrossAxisCount(constraints.maxWidth);
          return Padding(
            padding: const EdgeInsets.all(10),
            child: GridView.count(

              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: assetImage
                  .map((path) => ImageCard(assetPath: path))
                  .toList(),


            ),
          );
        },
      ),
    );
  }
}
