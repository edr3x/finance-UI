import 'package:flutter/material.dart';

class BalanceContainer extends StatelessWidget {
  const BalanceContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 40,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF262626),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "June 25 2022",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "\$69,420.69",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
          const Spacer(),
          const Text(
            '69%',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(width: 8),
          const Icon(
            Icons.arrow_upward,
            size: 25,
          ),
        ],
      ),
    );
  }
}
