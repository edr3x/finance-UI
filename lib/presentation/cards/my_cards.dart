import 'package:finance/presentation/cards/widgets/cards.dart';
import 'package:finance/presentation/cards/widgets/transaction_tiles.dart';
import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  static const String routeName = '/cards-page';
  const MyCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.chevron_left_sharp,
                    size: 40,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text(
                "Your Cards",
                style: TextStyle(fontSize: 28),
              ),
              subtitle: const Text("  You have 3 active cards"),
              trailing: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFD574),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 28,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const MyCardContainer(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 15),
              child: Text(
                "Recent Transactions",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView(
                  children: const [
                    TransactionTile(
                      item: "Burger",
                      icon: Icons.restaurant,
                      date: "june 14",
                      price: "200",
                    ),
                    TransactionTile(
                      item: "Movie",
                      icon: Icons.movie,
                      date: "june 18",
                      price: "600",
                    ),
                    TransactionTile(
                      item: "Basketball",
                      icon: Icons.sports_basketball,
                      date: "june 14",
                      price: "800",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
