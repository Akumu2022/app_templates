// ignore_for_file: prefer_const_constructors

import 'package:bar_app/pages/bottonav.dart';
import 'package:bar_app/pages/icon_settings.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 1,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blue[800],
            size: 26,
          ),
        ),
        title: Center(child: Text("Profile")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            //stack
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://plus.unsplash.com/premium_photo-1705883267788-4040699634c4?q=80&w=1137&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Akumu Wycliff",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                "akumucliff@gmail.com",
                style: TextStyle(fontSize: 20),
              ),
            ),
            //profile

            SingleChildScrollView(
              child: Container(
                child: Row(
                  children: [
                    Positioned(
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.blue[900], shape: BoxShape.circle),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Edit Profile",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 180),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "General Settings",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  buildIconRow(Icons.edit, "Mode: Dark and Light"),
                  SizedBox(
                    height: 10,
                  ),
                  buildIconRow(Icons.update, "News Updates"),
                  SizedBox(
                    height: 10,
                  ),
                  buildIconRow(Icons.question_mark, "About"),
                  SizedBox(
                    height: 10,
                  ),
                  buildIconRow(Icons.warning, "Terms and Conditions"),
                  SizedBox(
                    height: 10,
                  ),
                  buildIconRow(Icons.lock, "Privacy Policy"),
                  SizedBox(
                    height: 10,
                  ),
                  buildIconRow(Icons.star, "Rate This App"),
                  SizedBox(
                    height: 10,
                  ),
                  buildIconRow(Icons.share, "Share This App"),
                  BottomNav()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
