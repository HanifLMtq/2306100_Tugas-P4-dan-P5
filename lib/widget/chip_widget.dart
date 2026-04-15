import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  final String label;

  const ChipWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 3, 101, 55),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(
          color: Color.fromARGB(255, 255, 255, 255),
          width: 2
        )
      ),
      child: Row(
        children: [
          Icon(Icons.star, size: 18, color: const Color.fromARGB(255, 200, 147, 42),),
          Text(label, style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}