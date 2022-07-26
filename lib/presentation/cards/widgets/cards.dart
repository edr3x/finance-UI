import 'package:finance/presentation/cards/widgets/mastercard.dart';
import 'package:flutter/material.dart';

class MyCardContainer extends StatelessWidget {
  const MyCardContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        height: 225,
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: const Color(0xFF6728FF),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/chip.png',
              height: 35,
            ),
            const SizedBox(height: 10),
            const Text(
              "4562 1122 4595 7852",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Jhon Doe",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 9),
                    Text(
                      "Expiry Date",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      "12/2022",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
                const MasterCardIcon(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
