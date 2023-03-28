import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // gambar di dalam gridview dibungkus oleh widget expanded
    return Expanded(
      // menampilkan gambar grid 3 kolom
      child: GridView(
        padding: const EdgeInsets.all(5),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
        // generate list gambar sebanyak 6 buah memakai iterasi index
        children: List.generate(
          6,
          (index) => Image.asset(
            'images/image${index + 1}.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
