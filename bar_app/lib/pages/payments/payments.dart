import 'package:bar_app/pages/bottonav.dart';
import 'package:bar_app/pages/cards.dart';
import 'package:flutter/material.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.grey[300]),
            child: Column(
              children: [
                AppBar(
                  elevation: 1,
                  title: Text(
                    "Payments",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                CircularImageCard(
                  imagePath: "lib/imagez/mpesa.png",
                  text: "Mpesa paybill",
                ),
                SizedBox(
                  height: 6,
                ),
                CircularImageCard(
                  imagePath: "lib/imagez/visa.jpeg",
                  text: "Visa Card",
                ),
                CircularImageCard(
                  imagePath: "lib/imagez/mpesa.png",
                  text: "Mpesa express",
                ),
                BottomNav()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
