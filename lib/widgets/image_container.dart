import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        padding: const EdgeInsets.all(5),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 3,
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
