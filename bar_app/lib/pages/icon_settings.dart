import 'package:flutter/material.dart';

Widget buildIconRow(IconData iconData, String text) {
  return Row(
    children: [
      Container(
        height: 40,
        width: 40,
        decoration:
            BoxDecoration(color: Colors.blue[900], shape: BoxShape.circle),
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
      SizedBox(
        width: 16,
      ),
      Text(
        text,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
      Spacer(),
      IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
    ],
  );
}
