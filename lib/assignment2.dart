import 'package:flutter/material.dart';

import 'defalutImageCard.dart';

class ImageData {
  final String imagePath;
  final String title;

  ImageData({required this.imagePath, required this.title});
}


class assignment2 extends StatelessWidget {
  final List<ImageData> imageDataList = [
    ImageData(imagePath: 'assets/11.jpeg', title: 'Full Stack Web Development (MERN)'),
    ImageData(imagePath: 'assets/12.jpeg', title: 'Flutter App Development'),
    ImageData(imagePath: 'assets/13.jpeg', title: 'Backend Development with Node.js'),
    ImageData(imagePath: 'assets/14.png', title: 'Frontend with ReactJS'),
    ImageData(imagePath: 'assets/15.jpeg', title: 'UI/UX Design Basics'),
    ImageData(imagePath: 'assets/one.jpg', title: 'Mobile App Design'),
    ImageData(imagePath: 'assets/11.jpeg', title: 'Full Stack Web Development (MERN)'),
    ImageData(imagePath: 'assets/12.jpeg', title: 'Flutter App Development'),
    ImageData(imagePath: 'assets/13.jpeg', title: 'Backend Development with Node.js'),
    ImageData(imagePath: 'assets/14.png', title: 'Frontend with ReactJS'),
    ImageData(imagePath: 'assets/15.jpeg', title: 'UI/UX Design Basics'),
    ImageData(imagePath: 'assets/one.jpeg', title: 'Mobile App Design'),

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
              children: imageDataList
                  .map((data) => ImageCard(imagePath: data.imagePath, title: data.title,))
                  .toList(),


            ),
          );
        },
      ),
    );
  }
}
