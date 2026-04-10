import 'package:flutter/material.dart';

class Commoncarousal extends StatelessWidget {
  const Commoncarousal({super.key,required this.subtitle,required this.title,required this.imagepath,required this.backgroundColor});

  final String title;
  final String subtitle;
  final String imagepath;
  final Color  backgroundColor;
  

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(15),
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
        // gradient: const LinearGradient(
        //   colors: [Color(0xff6DCB5D), Color(0xff4CAF50)],
        // ),
      ),
      child: Row(
        children: [
          // LEFT SIDE TEXT
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),

          // RIGHT SIDE IMAGE
          Image.asset(
            imagepath,
            fit: BoxFit.cover,
            )
        ],
      ),);
  }
}