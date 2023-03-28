import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import './button.dart';
import './description.dart';
import './title_layout.dart';
import './image_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Layout Demo'),
        leading: const Icon(Icons.arrow_circle_left),
      ),
      body: Column(
        children: const [
          // IMAGE
          ImageContainer(),
          // TITLE
          TitleLayout(),
          // BUTTON
          Button(),
          // TEXT DESCRIPTION
          Desc()
        ],
      ),
      // BottomNavBar
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
