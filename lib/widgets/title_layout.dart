import 'package:flutter/material.dart';

class TitleLayout extends StatelessWidget {
  const TitleLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      // title (text dan icon) disusun dengan row dari kiri ke kanan
      child: Row(
        children: [
          Expanded(
            // text disusun oleh column dari atas ke bawah
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      // ketebalan font
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    // warna font
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          // Icon rating with star
          Icon(
            Icons.star,
            color: Colors.red[200],
          ),
          const Text('80'),
        ],
      ),
    );
  }
}