import 'package:flutter/material.dart';

class MasterCardIcon extends StatelessWidget {
  const MasterCardIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 7, top: 8),
          child: Image.asset(
            'assets/mastercard.png',
            height: 60,
          ),
        ),
        const Text(
          "Mastercard",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ],
    );
  }
}
