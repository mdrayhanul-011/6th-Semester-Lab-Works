import 'package:flutter/material.dart';

class PhoneCard extends StatelessWidget {
  final String number;
  final String label;

  PhoneCard({
    required this.number,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF10272B),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white24),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(151, 255, 255, 255),
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.black26,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.phone, color: Colors.white70),
          ),

          SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  label,
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          Icon(Icons.edit, color: Colors.white60),
          SizedBox(width: 12),
          Icon(Icons.delete, color: Colors.white60),
        ],
      ),
    );
  }
}