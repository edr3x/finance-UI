import 'package:finance/presentation/cards/my_cards.dart';
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
              title: const Text("Home"),
              leading: const Icon(Icons.home),
            ),
            const Divider(color: Colors.white),
            ListTile(
              onTap: () => Navigator.pushNamed(
                context,
                MyCards.routeName,
              ),
              title: const Text("Cards"),
              leading: const Icon(Icons.credit_card),
            ),
            const Divider(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
