import 'package:flutter/material.dart';
class ImageCard extends StatelessWidget {
  final String assetPath;

  const ImageCard({super.key, required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(3, 3),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(

              assetPath,
              height: 80,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          SizedBox(height: 3,),
          Row(mainAxisAlignment: MainAxisAlignment.center,children: [
            Icon(Icons.settings_accessibility),
            Text("6 sit left"),
            SizedBox(width: 3,),
            Icon(Icons.timelapse_outlined),
            Text("10 days left")
          ],),
          SizedBox(height: 3,),
          Text(
            "Full Stack Web Development(Mern)",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 3,),
          Text("Show details",textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}