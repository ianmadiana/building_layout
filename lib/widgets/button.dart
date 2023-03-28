import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
          children: [
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(10))),
                  context: context,
                  builder: (context) => SizedBox(
                    height: 200,
                    child: ListView(
                      children: const [
                        ListTile(
                          leading: Icon(
                            Icons.message_rounded,
                            color: Colors.blue,
                          ),
                          title: Text("Message"),
                        ),
                        ListTile(
                          leading: Icon(Icons.email, color: Colors.blue),
                          title: Text("Email"),
                        ),
                        ListTile(
                          leading: Icon(Icons.facebook, color: Colors.blue),
                          title: Text("Facebook"),
                        ),
                      ],
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.share),
              color: Colors.blue,
            ),
            const Text('SHARE', style: TextStyle(color: Colors.blue)),
          ],
        ),
      ],
    );
  }
}
