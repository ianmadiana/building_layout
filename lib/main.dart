import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Layout Demo'),
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: Column(
        children: [
          // IMAGE
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(5),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
              children: List.generate(
                4,
                (index) => Image.asset(
                  'images/image${index + 1}.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // TITLE
          Container(
            padding: const EdgeInsets.all(32),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: const Text(
                          'Oeschinen Lake Campground',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Kandersteg, Switzerland',
                        style: TextStyle(
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
                const Text('41'),
              ],
            ),
          ),
          // BUTTON
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // button CALL
              Column(
                children: const [
                  Icon(
                    Icons.call,
                    color: Colors.blue,
                  ),
                  Text('CALL', style: TextStyle(color: Colors.blue)),
                ],
              ),
              // button ROUTE
              Column(
                children: const [
                  Icon(
                    Icons.route,
                    color: Colors.blue,
                  ),
                  Text(
                    'ROUTE',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              // button SHARE
              Column(
                children: const [
                  Icon(
                    Icons.share,
                    color: Colors.blue,
                  ),
                  Text('SHARE', style: TextStyle(color: Colors.blue)),
                ],
              ),
            ],
          ),
          // TEXT DESCRIPTION
          Container(
            padding: const EdgeInsets.all(32),
            child: const Text(
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
              'Alps. Situated 1,578 meters above sea level, it is one of the '
              'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
              'half-hour walk through pastures and pine forest, leads you to the '
              'lake, which warms to 20 degrees Celsius in the summer. Activities '
              'enjoyed here include rowing, and riding the summer toboggan run.',
              softWrap: true,
            ),
          )
        ],
      ),
      // Button Nav Bar
      bottomNavigationBar: FloatingNavbar(
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
          FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
          FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
        ],
        currentIndex: 1,
        onTap: (val) {},
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
