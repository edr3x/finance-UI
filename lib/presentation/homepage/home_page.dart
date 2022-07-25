import 'package:finance/presentation/homepage/widgets/balance_container.dart';
import 'package:finance/presentation/homepage/widgets/tools_select.dart';
import 'package:finance/presentation/shared/custom_drawer.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_chart.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/home-page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF000000),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              size: 30,
            ),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 13),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  "Your Balance",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const BalanceContainer(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SentReceive(
                  icon: Icons.arrow_upward,
                  label: "Sent",
                  iconColor: Colors.pink,
                ),
                SentReceive(
                  icon: Icons.arrow_downward,
                  label: "Receive",
                  iconColor: Colors.green,
                ),
                SentReceive(
                  icon: Icons.money,
                  label: "Loan",
                  iconColor: Colors.yellow,
                ),
                SentReceive(
                  icon: Icons.cloud_upload,
                  label: "Topup",
                  iconColor: Colors.purple,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Activities",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color(0xFF262626),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Text("This Week"),
                ),
              ],
            ),
            const CustomChart(),
          ],
        ),
      ),
    );
  }
}
