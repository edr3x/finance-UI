import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 190,
      child: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 25),
            const Divider(color: Colors.white),
            ListTile(
              onTap: () {},
              title: const Text("Text"),
              leading: const Icon(Icons.home),
            ),
            const Divider(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
