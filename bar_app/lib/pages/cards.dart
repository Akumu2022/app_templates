import 'package:flutter/material.dart';

class CircularImageCard extends StatelessWidget {
  final String imagePath;
  final String text;

  const CircularImageCard(
      {Key? key, required this.imagePath, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 18, right: 18, top: 24),
      child: Container(
        height: 180,
        width: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 8), // Add spacing between text and image
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      imagePath,
                      height: 80, // adjust the height as needed
                      width: 80, // adjust the width as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    text,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
                height:
                    10), // Add spacing between image and "Beside Image Text"
          ],
        ),
      ),
    );
  }
}
