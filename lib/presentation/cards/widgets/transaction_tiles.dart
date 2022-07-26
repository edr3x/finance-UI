import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String item;
  final String date;
  final IconData icon;
  final String price;

  const TransactionTile({
    Key? key,
    required this.item,
    required this.date,
    required this.icon,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0xFF262626),
          borderRadius: BorderRadius.circular(35),
        ),
        child: ListTile(
          leading: Icon(
            icon,
            size: 32,
          ),
          title: Text(
            item,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          subtitle: Text(
            date,
            style: const TextStyle(fontSize: 16),
          ),
          trailing: Text(
            "+\$$price",
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
