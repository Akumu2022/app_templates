// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:bar_app/pages/bottonav.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Welcome,"),
              Text(
                "Bar corner",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_2_rounded),
            iconSize: 40,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[200],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal:
                            16.0), // Adjust horizontal padding as needed
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment
                                .end, // Align text to the end of the column
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text("My Wallet"),
                              SizedBox(
                                height: 8,
                              ),
                              Text("\$159.00"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Free Delivery\nOrder!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Available 1 December - 30 December 2025",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("Order Now"))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[900],
                    child: Icon(Icons.menu_open, color: Colors.white, size: 40),
                  ),
                  SizedBox(width: 20),
                  CircleAvatar(
                    backgroundColor: Colors.blue[900],
                    child: Icon(Icons.favorite_outline_outlined,
                        color: Colors.white, size: 40),
                  ),
                  SizedBox(width: 20),
                  CircleAvatar(
                    backgroundColor: Colors.blue[900],
                    child: Icon(Icons.list, color: Colors.white, size: 40),
                  ),
                  SizedBox(width: 20),
                  CircleAvatar(
                    backgroundColor: Colors.blue[900],
                    child:
                        Icon(Icons.local_drink, color: Colors.white, size: 40),
                  ),
                  SizedBox(width: 20),
                  CircleAvatar(
                    backgroundColor: Colors.blue[900],
                    child: Icon(Icons.more, color: Colors.white, size: 40),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(20),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(80),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(20),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
