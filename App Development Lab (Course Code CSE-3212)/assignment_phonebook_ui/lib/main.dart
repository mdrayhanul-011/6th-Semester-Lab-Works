import 'package:flutter/material.dart';
import 'phone_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhoneBookUI(),
    );
  }
}

class PhoneBookUI extends StatelessWidget {
  final List<Map<String, String>> phoneList = [
    {
      "number": "+1 (555) 987-6543",
      "label": "Home • Added 2mo ago",
    },
    {
      "number": "+44 20 7123 4567",
      "label": "Work • Unverified",
    },
    {
      "number": "+880 1712 345678",
      "label": "Personal • Added 1mo ago",
    },
    {
      "number": "+91 98765 43210",
      "label": "Office • Added 3mo ago",
    },
    {
      "number": "+91 98765 43210",
      "label": "Office • Added 3mo ago",
    },
    {
      "number": "+91 98765 43210",
      "label": "Office • Added 3mo ago",
    },
    {
      "number": "+91 98765 43210",
      "label": "Office • Added 3mo ago",
    },
    {
      "number": "+91 98765 43210",
      "label": "Office • Added 3mo ago",
    },
    {
      "number": "+91 98765 43210",
      "label": "Office • Added 3mo ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF071B1E),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),

                Text(
                  "Secondary Numbers",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),

                for (int i = 0; i < phoneList.length; i++)
                  PhoneCard(
                    number: phoneList[i]["number"]!,
                    label: phoneList[i]["label"]!,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}